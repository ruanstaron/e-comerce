<?php
/*
Plugin Name: Useful Banner Manager
Plugin URI: http://rubensargsyan.com/wordpress-plugin-useful-banner-manager/
Description: This banner manager plugin helps to manage the banners easily over the WordPress blog. It works with BuddyPress too. <a href="admin.php?page=useful-banner-manager/banners.php">Banner Manager</a>
Version: 1.6.1
Author: Ruben Sargsyan
Author URI: http://rubensargsyan.com/
*/

/*  Copyright 2015 Ruben Sargsyan (email: info@rubensargsyan.com)

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, see <http://www.gnu.org/licenses/>.
*/

$ubm_plugin_url = WP_PLUGIN_URL . '/' . str_replace( basename( __FILE__ ), '', plugin_basename( __FILE__ ) );
$ubm_plugin_prefix = 'ubm_';

require_once dirname( __FILE__ ) . '/classes/classes.php';
require_once dirname( __FILE__ ) . '/includes/hooks.php';
require_once dirname( __FILE__ ) . '/includes/widgets.php';

function ubm_add_banner( $data ) {
    global $ubm_banners;

    $id = $ubm_banners->add_banner( $data );

    return $id;
}

function ubm_update_banner( $id, $data ) {
    global $ubm_banners;

    $ubm_banners->update_banner( $id, $data );
}

function ubm_delete_banner( $id ){
    global $ubm_banners;

    $ubm_banners->delete_banner( $id );
}

function ubm_get_banners(){
    global $ubm_banners;

    $banners = $ubm_banners->get_banners();

    return $banners;
}

function ubm_get_banner( $id ) {
    global $ubm_banners;

    $banner = $ubm_banners->get_banner( $id );

    return $banner;
}

function ubm_display_banner( $banner ) {
    global $ubm_banners;

    $ubm_banners->display_banner( $banner );
}

function ubm_set_rotation_number( $number ) {
    global $ubm_banners;

    $ubm_banners->set_rotation_number( $number );
}

function ubm_get_rotation_number() {
    global $ubm_banners;

    $rotation_number = $ubm_banners->get_rotation_number();

    return $rotation_number;
}

function ubm_register_button( $buttons ) {
    array_push( $buttons, 'usefulbannermanager' );

    return $buttons;
}

function ubm_add_plugin( $plugin_array ) {
    global $ubm_plugin_url;

    $plugin_array['usefulbannermanager'] = $ubm_plugin_url . 'tinymce/useful-banner-manager.js';

    return $plugin_array;
}

function useful_banner_manager_banners( $banners = '', $count = '' ) {
    echo( do_shortcode( '[useful_banner_manager' . ( empty( $banners ) ? '' : ' banners=' . $banners ) . ( empty( $count ) ? '' : ' count=' . $count ) . ']' ) );
}

function useful_banner_manager_banners_rotation( $banners = '', $interval = '', $width = '', $height = '', $orderby = '' ) {
    echo( do_shortcode( '[useful_banner_manager_banner_rotation' . ( empty( $banners ) ? '' : ' banners=' . $banners ) . ( empty( $interval ) ? '' : ' interval=' . $interval ) . ( empty( $width ) ? '' : ' width=' . $width ) . ( empty( $height ) ? '' : ' height=' . $height ) . ( ( empty( $orderby ) ) ? '' : ' orderby=' . $orderby ) . ']' ) );
}
?>