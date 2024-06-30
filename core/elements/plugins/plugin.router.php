<?php

require_once MODX_CORE_PATH . 'vendor/autoload.php';
require_once MODX_CORE_PATH . 'components/sendit/services/sendit.class.php';
$helpers = new CustomServices\Helpers($modx);

switch ($modx->event->name) {
    case 'msOnAddToCart':
        $tmp = $cart->get();
        if ((int)$tmp[$key]['id'] === (int)$tmp[$key]['options']['main']) {
            $helpers->addToMains($tmp[$key]['id']);
            foreach ($tmp as $k => $item) {
                if ($k !== $key) {
                    $tmp[$k] = $helpers->recalcPrice($item, $item['count']);
                }
            }
            $cart->set($tmp);
        } else {
            if ($tmp[$key]['options']['parent']) {
                $session = SendIt::getSession($modx, session_id(), 'Discounts');
                $isAddMain = in_array((int)$tmp[$key]['options']['main'], $session['mains']);
                if ($isAddMain) {
                    $tmp[$key] = $helpers->recalcPrice($tmp[$key]);
                    $cart->set($tmp);
                }
            }
        }
        break;

    case 'msOnChangeInCart':
        $tmp = $cart->get();
        $session = SendIt::getSession($modx, session_id(), 'Discounts');
        if (in_array($tmp[$key]['id'], $session['mains'])) {
            if($count > 1){
                $tmp[$key] = $helpers->recalcPrice($tmp[$key], --$count);
            }else{
                $tmp[$key]['old_price'] = $tmp[$key]['properties']['original_old_price'];
                $tmp[$key]['price'] = $tmp[$key]['properties']['original_price'];
            }

            /*foreach ($tmp as $k => $item) {
                if ($k !== $key) {
                    $tmp[$k] = $helpers->recalcPrice($item, $item['count']);
                }
            }*/
        }else{
            if(in_array($tmp[$key]['options']['main'], $session['mains'])){
                $tmp[$key] = $helpers->recalcPrice($tmp[$key], $count);
            }
        }
        $cart->set($tmp);
        break;

    case 'msOnBeforeRemoveFromCart':
        $tmp = $cart->get();
        $session = SendIt::getSession($modx, session_id(), 'Discounts');
        if (in_array($tmp[$key]['id'], $session['mains'])) {
            unset($session['mains'][array_search($tmp[$key]['id'], $session['mains'])]);
            SendIt::setSession($modx, $session, session_id(), 'Discounts');
            foreach ($tmp as $k => $item) {
                $tmp[$k]['old_price'] = $item['properties']['original_old_price'];
                $tmp[$k]['price'] = $item['properties']['original_price'];
            }
            $cart->set($tmp);
        }
        break;
}
