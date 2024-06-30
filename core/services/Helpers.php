<?php

namespace CustomServices;

require_once MODX_CORE_PATH . 'components/sendit/services/sendit.class.php';

/**
 *
 */
class Helpers
{

    /** @var \modX */
    protected \modX $modx;

    /** @var \miniShop2 */
    protected \miniShop2 $ms2;

    /** @var int */
    protected int $cacheTime = 10800;

    /** @var array */
    protected array $cacheOptions = [\xPDO::OPT_CACHE_KEY => 'customservices'];

    /** @var string $basePath */
    private string $basePath;

    /** @var string $assetsPath */
    private string $assetsPath;

    /** @var string $corePath */
    private string $corePath;

    /**
     * @param $modx
     */
    public function __construct($modx)
    {
        $this->modx = $modx;
        $this->initialize();
    }

    protected function initialize()
    {
        $this->basePath = $this->modx->getOption('base_path');
        $this->corePath = $this->modx->getOption('core_path');
        $this->assetsPath = $this->modx->getOption('assets_path');
        $this->ms2 = $this->modx->getService('miniShop2');
        $this->ms2->initialize($this->modx->context->key);
    }

    public function getDiscountProducts(array $parents, int $rid): array
    {
        if(!$hide = $this->getHide($rid)){
            $this->addToMains($rid);
        }
        $discounts = $this->getDiscounts($parents);
        $data = [];
        $q = $this->modx->newQuery('modResource');
        $q->leftJoin('msProductData', 'Data', 'modResource.id=Data.id');
        $q->leftJoin('modResource', 'Parent', 'modResource.parent=Parent.id');
        $q->select($this->modx->getSelectColumns('modResource', 'modResource', ''));
        $q->select($this->modx->getSelectColumns('modResource', 'Parent', 'parent_', ['pagetitle']));
        $q->select($this->modx->getSelectColumns('msProductData', 'Data', '', ['id'], true));
        $q->where(['modResource.parent:IN' => $parents, 'id:!=' => $rid]);
        if ($q->prepare() && $q->stmt->execute()) {
            $results = $q->stmt->fetchAll(\PDO::FETCH_ASSOC);
            foreach ($results as $item) {
                if (!isset($data[$item['parent']])) {
                    $data[$item['parent']]['name'] = $item['parent_pagetitle'];
                    $data[$item['parent']]['id'] = $item['parent'];
                    $data[$item['parent']]['children'] = [];
                }

                $item['discount'] = $discounts[$item['parent']] ?? 0;
                $item['hide'] = $item['discount'] > 0 ? $hide : true;
                $item['main'] = $rid;
                if (!$hide && $item['discount'] > 0) {
                    $item['old_price'] = $item['price'];
                    $item['price'] = $item['price'] - round(($item['price'] * ($item['discount'] / 100)), 2);
                }

                $data[$item['parent']]['children'][] = $item;
            }
        }
        return $data;
    }

    protected function getHide(int $rid): bool
    {
        $cart = $this->ms2->cart->get();
        $hide = true;
        foreach ($cart as $item) {
            if ($item['id'] === $rid) {
                $hide = false;
                break;
            }
        }
        return $hide;
    }

    public function getDiscounts(array $parents): array
    {
        $hash = md5(serialize($parents));
        $cacheKey = "Discounts::$hash";
        if ($discounts = $this->modx->cacheManager->get($cacheKey, $this->cacheOptions)) {
            return $discounts;
        }

        $q = $this->modx->newQuery('modTemplateVarResource');
        $q->select('JSON_OBJECTAGG(contentid, value) AS discounts');
        $q->where(['contentid:IN' => $parents, 'tmplvarid' => 1]);
        if ($q->prepare() && $q->stmt->execute()) {
            $discounts = json_decode($q->stmt->fetch(\PDO::FETCH_COLUMN), 1);
        }

        $this->modx->cacheManager->set($cacheKey, $discounts, $this->cacheTime, $this->cacheOptions);
        return $discounts;
    }

    public function addToMains(int $rid): void
    {
        $session = \SendIt::getSession($this->modx, session_id(), 'Discounts');
        $session['mains'][] = $rid;
        $session['mains'] = array_unique($session['mains']);
        $this->modx->log(1, print_r($session, 1));
        \SendIt::setSession($this->modx, $session, session_id(), 'Discounts');
    }

    public function recalcPrice(array $item, ?int $count = 1): array
    {
        $discounts = $this->getDiscounts([2, 3, 4, 5, 6]);
        $discount = $discounts[$item['options']['parent']] ?? 0;
        if($discount > 0){
            $originalPrice = $item['properties']['original_price'];
            $discountCost = round(($originalPrice * ($discount / 100)), 2);
            $item['old_price'] = $originalPrice;
            $item['price'] = $originalPrice - round(($discountCost / $count), 2);
            $item['options']['discount_cost'] = $discountCost;
        }
        return $item;
    }

}
