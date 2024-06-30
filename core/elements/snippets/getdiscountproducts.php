<?php
include_once MODX_CORE_PATH . 'vendor/autoload.php';

if(!$parents){
    return '';
}
if(!$rid){
    $rid = (int)$_POST['rid'] ?: $modx->resource->get('id');
}
if(!is_array($parents)){
    $parents = explode(',', $parents);
}
$helpers = new CustomServices\Helpers($modx);
$data = $helpers->getDiscountProducts($parents, $rid);
$parser = $modx->getParser()->pdoTools;
if($wrapperTpl){
    $html = $parser->getChunk($wrapperTpl, ['items' => $data]);
    return !$SendIt ? $html : $SendIt->success('', ['html' => $html]);
}
return !$SendIt ? $data : $SendIt->success('', ['resources' => $data]);
