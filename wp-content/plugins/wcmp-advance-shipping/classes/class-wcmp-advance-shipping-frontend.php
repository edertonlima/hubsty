<?php

class WCMp_Advance_Shipping_Frontend {

    public function __construct() {
        add_action('before_wcmp_vendor_dashboard', array(&$this, 'save_wcmp_table_rate_shipping'));
        add_action('wcmp_frontend_enqueue_scripts', array(&$this, 'frontend_styles'));
    }

    public function save_wcmp_table_rate_shipping() {
        global $wpdb, $WCMp, $WCMp_Advance_Shipping;
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if ($WCMp->endpoints->get_current_endpoint() == 'vendor-shipping') {
                if (isset($_POST['wcmp_table_rate']) && isset($_POST['shipping_class_id'])) {
                    $table_rate_datas = $_POST['wcmp_table_rate'];
                    $shipping_class_id = $_POST['shipping_class_id'];
                    if (!empty($table_rate_datas) && is_array($table_rate_datas)) {
                    	// Clear cache
						$wpdb->query( "DELETE FROM `$wpdb->options` WHERE `option_name` LIKE ('_transient_wc_ship_%')" );
						$wpdb->query( "DELETE FROM `$wpdb->options` WHERE `option_name` LIKE ('_transient_shipping-transient-version')" );

                        foreach ($table_rate_datas as $shipping_method_id => $table_rate_data) {
                            foreach ($table_rate_data as $data) {
                                $rate_id = $data['rate_id'];
                                $rate_class = $shipping_class_id;
                                $rate_condition = $data['rate_condition'];
                                $rate_min = isset($data['rate_min']) ? $data['rate_min'] : '';
                                $rate_max = isset($data['rate_max']) ? $data['rate_max'] : '';
                                $rate_priority = isset($data['rate_priority']) ? 1 : 0;
                                $rate_abort = isset($data['rate_abort']) ? 1 : 0;
                                $rate_cost = isset($data['rate_cost']) ? rtrim(rtrim(number_format((double) $data['rate_cost'], 4, '.', ''), '0'), '.') : '';
                                $rate_cost_per_item = isset($data['rate_cost_per_item']) ? rtrim(rtrim(number_format((double) $data['rate_cost_per_item'], 4, '.', ''), '0'), '.') : '';
                                $rate_cost_per_weight_unit = isset($data['rate_cost_per_weight_unit']) ? rtrim(rtrim(number_format((double) $data['rate_cost_per_weight_unit'], 4, '.', ''), '0'), '.') : '';
                                $rate_cost_percent = isset($data['rate_cost_percent']) ? rtrim(rtrim(number_format((double) str_replace('%', '', $data['rate_cost_percent']), 2, '.', ''), '0'), '.') : '';
                                $rate_label = isset($data['rate_label']) ? $data['rate_label'] : '';
                                if ($rate_id > 0) {
                                    $wpdb->update(
                                            $wpdb->prefix . 'woocommerce_shipping_table_rates', array(
                                        'rate_condition' => sanitize_title($rate_condition),
                                        'rate_min' => $rate_min,
                                        'rate_max' => $rate_max,
                                        'rate_priority' => $rate_priority,
                                        'rate_cost_per_item' => $rate_cost_per_item,
                                        'rate_cost_per_weight_unit' => $rate_cost_per_weight_unit,
                                        'rate_cost_percent' => $rate_cost_percent,
                                        'rate_label' => $rate_label,
                                        'rate_abort' => $rate_abort,
                                        'rate_cost' => $rate_cost,
                                            ), array(
                                        'rate_id' => $rate_id
                                            ), array(
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%d',
                                        '%d'
                                            ), array(
                                        '%d'
                                            )
                                    );
                                } else {
                                    $wpdb->insert("{$wpdb->prefix}woocommerce_shipping_table_rates", array(
                                        'rate_class' => $rate_class,
                                        'rate_condition' => sanitize_title($rate_condition),
                                        'rate_min' => $rate_min,
                                        'rate_max' => $rate_max,
                                        'rate_priority' => $rate_priority,
                                        'rate_abort' => $rate_abort,
                                        'rate_cost' => $rate_cost,
                                        'rate_cost_per_item' => $rate_cost_per_item,
                                        'rate_cost_per_weight_unit' => $rate_cost_per_weight_unit,
                                        'rate_cost_percent' => $rate_cost_percent,
                                        'shipping_method_id' => $shipping_method_id,
                                        'rate_label' => $rate_label
                                            ), array(
                                        '%d',
                                        '%s',
                                        '%d',
                                        '%d',
                                        '%d',
                                        '%d',
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%s',
                                        '%d',
                                        '%s'
                                            )
                                    );
                                }
                            }
                        }
                        wc_add_notice(__('Table rates Updated', 'wcmp-advance-shipping'), 'success');
                    }
                }
            }
        }
    }
    
    public function frontend_styles() {
        global $WCMp_Advance_Shipping;
        $frontend_style_path = $WCMp_Advance_Shipping->plugin_url . 'assets/frontend/';
        $frontend_style_path = str_replace(array('http:', 'https:'), '', $frontend_style_path);
        $suffix = defined('SCRIPT_DEBUG') && SCRIPT_DEBUG ? '' : '.min';

		wp_enqueue_script( 'wcmp_advanced_shipping_frontend', $frontend_style_path . 'js/frontend' . $suffix . '.js', array( 'jquery' ), $WCMp_Advance_Shipping->version);
			
        wp_register_style('wcmp_as_frontend', $frontend_style_path . 'css/frontend' . $suffix . '.css', array(), $WCMp_Advance_Shipping->version);
        wp_enqueue_style('wcmp_as_frontend');
    }

}
