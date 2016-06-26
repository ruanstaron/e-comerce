<?php
add_action( 'init', 'ubm_init' );

function ubm_init() {
    global $wpdb, $ubm_banners;

    $ubm_banners = new UBM_Banners();

    $wpdb->ubm_banners = $wpdb->prefix . 'useful_banner_manager_banners';

    if ( current_user_can( 'edit_posts' ) || current_user_can( 'edit_pages' ) ) {
       if ( get_user_option( 'rich_editing' ) == 'true' ) {
          add_filter( 'mce_external_plugins', 'ubm_add_plugin' );
          add_filter( 'mce_buttons', 'ubm_register_button' );
       }
    }
}

add_action( 'plugins_loaded', 'ubm_loaded' );

function ubm_loaded() {
	global $wpdb;

    $ubm_table_name = $wpdb->prefix . 'useful_banner_manager_banners';

	$charset_collate = '';

	if ( $wpdb->has_cap( 'collation' ) ) {
		if ( ! empty( $wpdb->charset ) ) {
			$charset_collate = "DEFAULT CHARACTER SET " . $wpdb->charset;
		}

		if ( ! empty( $wpdb->collate ) ) {
			$charset_collate .= " COLLATE " . $wpdb->collate;
		}
	}

    require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );

    if ( $wpdb->get_var( "SHOW TABLES LIKE '" . $ubm_table_name . "'") != $ubm_table_name ) {
	    $create_ubm_table = "CREATE TABLE " . $ubm_table_name . "(" .
			"id INT(11) NOT NULL auto_increment," .
			"banner_name VARCHAR(255) NOT NULL," .
            "banner_type VARCHAR(4) NOT NULL," .
            "banner_title VARCHAR(255) NOT NULL," .
            "banner_alt TEXT NOT NULL," .
            "banner_link VARCHAR(255) NOT NULL," .
            "link_target VARCHAR(7) NOT NULL," .
            "link_rel VARCHAR(8) NOT NULL," .
            "banner_width INT(11) NOT NULL," .
            "banner_height INT(11) NOT NULL," .
            "added_date VARCHAR(10) NOT NULL," .
            "active_until VARCHAR(10) NOT NULL," .
            "banner_order INT(11) NOT NULL DEFAULT 0," .
            "is_visible VARCHAR(3) NOT NULL," .
            "banner_added_by VARCHAR(50) NOT NULL," .
            "banner_edited_by TEXT NOT NULL," .
            "last_edited_date VARCHAR(10) NOT NULL," .
            "PRIMARY KEY (id)) $charset_collate;";

        dbDelta( $create_ubm_table );
    }

    $ubm_version        = '1.6';
    $current_version    = get_option( 'ubm_version' );

    if ( $current_version < '1.3' ) {
        $create_ubm_not_exists_fields = "ALTER TABLE " . $ubm_table_name . " ADD wrapper_id VARCHAR(255) NOT NULL AFTER banner_order, ADD wrapper_class VARCHAR(255) NOT NULL AFTER wrapper_id";

        $wpdb->query( $create_ubm_not_exists_fields );
    }

    if ( $current_version == '1.0' ) {
        $create_ubm_not_exists_fields = "ALTER TABLE " . $ubm_table_name . " ADD banner_alt TEXT NOT NULL AFTER banner_title, ADD link_rel VARCHAR(8) NOT NULL AFTER link_target";

        $wpdb->query( $create_ubm_not_exists_fields );

        update_option( 'ubm_version', $ubm_version );
    } elseif ( $current_version < $ubm_version ) {
        update_option( 'ubm_version', $ubm_version );
    } elseif ( $current_version === false ) {
        add_option( 'ubm_version', $ubm_version );
    }

    $upload_dir = wp_upload_dir();

    if ( ! file_exists( $upload_dir['basedir'] . '/useful_banner_manager_banners' ) ) {
        @ mkdir( $upload_dir['basedir'] . '/useful_banner_manager_banners' );
    }

    load_plugin_textdomain( 'useful-banner-manager', false, 'useful-banner-manager/languages' );
}

add_action( 'admin_menu', 'ubm_admin_menu' );

function ubm_admin_menu() {
    if ( function_exists ( 'add_menu_page' ) ) {
		add_menu_page( __( 'Banners', 'useful-banner-manager' ), __( 'Banner Manager', 'useful-banner-manager' ), 'manage_options', 'useful-banner-manager/banners.php' );
	}
}

add_action( 'wp_ajax_useful_banner_manager', 'ubm_ajax_tinymce' );

function ubm_ajax_tinymce() {
    if ( ! current_user_can( 'edit_pages' ) && ! current_user_can( 'edit_posts' ) ){
        return;
    }

   	include_once( dirname( dirname( __FILE__ ) ) . '/tinymce/window.php' );

    die();
}

add_action( 'widgets_init', 'ubm_widget_init' );

function ubm_widget_init() {
	if ( ! is_blog_installed() ) {
	    return;
	}

    register_widget( 'UBM_Widget' );
    register_widget( 'UBM_Rotation_Widget' );
}

add_shortcode( 'useful_banner_manager', 'ubm_add_banners' );

function ubm_add_banners( $atts ) {
    global $wpdb;

    if ( empty( $atts['banners'] ) ) {
        $banners_ids_where = '';
    } else {
        $banners_ids = explode( ',', $atts['banners'] );

        $banners_ids = array_map( 'intval', $banners_ids );

        $banners_ids_where = "id IN (" . implode( ',', $banners_ids ) . ") AND ";
    }

    if ( empty( $atts['count'] ) ) {
        $count = 1;
    } else {
        $count = intval( $atts['count'] );
    }

    $banners = $wpdb->get_results( "SELECT * FROM ( SELECT * FROM " . $wpdb->ubm_banners . " WHERE " . $banners_ids_where . "( active_until = -1 OR active_until >= '" . date( 'Y-m-d' ) . "') AND is_visible = 'yes' ORDER BY RAND() LIMIT " . $count . ") as banners ORDER BY banner_order DESC;" );

    $banners_html = '';

    if( ! empty( $banners ) ) {
        $upload_dir = wp_upload_dir();

        foreach ( $banners as $banner ) {
            $banners_html .= '<div' . ( ( empty( $banner->wrapper_id ) ) ? '' : ' id="' . $banner->wrapper_id . '"' ) . ' class="ubm_banner' . ( ( empty( $banner->wrapper_class ) ) ? '' : ' ' . $banner->wrapper_class ) . '">';

            if ( $banner->banner_type == 'swf' ) {
                $banners_html .= '<object width="' . $banner->banner_width . '" height="' . $banner->banner_height . '">
                    <param name="movie" value="' . $upload_dir['baseurl'] . '/useful_banner_manager_banners/' . $banner->id . '-' . $banner->banner_name . '.' . $banner->banner_type . '" />
                    <param name="wmode" value="transparent">
                    <embed src="' . $upload_dir['baseurl'] . '/useful_banner_manager_banners/' . $banner->id . '-' . $banner->banner_name . '.' . $banner->banner_type . '" width="' . $banner->banner_width . '" height="' . $banner->banner_height . '" wmode="transparent"></embed>
                </object>';
            } else {
                if ( $banner->banner_link != '' ) {
                    $banners_html .= '<a href="' . $banner->banner_link . '" target="' . $banner->link_target . '" rel="' . $banner->link_rel . '">';
                }

                $banners_html .= '<img src="' . $upload_dir['baseurl'] . '/useful_banner_manager_banners/' . $banner->id . '-' . $banner->banner_name . '.' . $banner->banner_type . '"' . ( empty( $banner->banner_width ) ? '' : ' width="' . $banner->banner_width . '"' ) . ( empty( $banner->banner_height ) ? '' : ' height="' . $banner->banner_height . '"' ) . ' alt="' . $banner->banner_alt . '">';

                if ( $banner->banner_link != '' ) {
                    $banners_html .= '</a>';
                }
            }

            $banners_html .= '</div>';
        }
    }

    return $banners_html;
}

add_shortcode( 'useful_banner_manager_banner_rotation', 'ubm_add_banners_rotation' );

function ubm_add_banners_rotation( $atts ) {
    global $wpdb;

    if ( empty( $atts['banners'] ) ) {
        $banners_ids_where = '';
    } else {
        $banners_ids = explode( ',', $atts['banners'] );

        $banners_ids = array_map( 'intval', $banners_ids );

        $banners_ids_where = "id IN (" . implode( ',', $banners_ids ) . ") AND ";
    }

    if ( empty( $atts['interval'] ) ) {
        $interval = 10;
    } else {
        $interval = intval( $atts['interval'] );
    }

    if ( empty( $atts['width'] ) ) {
        $width = '180px';
    } else {
        $width = $atts['width'];

        if ( is_numeric( $width ) ) {
            $width = $width . 'px';
        }
    }

    if ( empty( $atts['height'] ) ) {
        $height = '180px';
    } else {
        $height = $atts['height'];

        if ( is_numeric( $height ) ) {
            $height = $height . 'px';
        }
    }

    if ( ! empty( $atts['orderby'] ) && $atts['orderby'] == 'rand' ) {
        $orderby = 'RAND()';
    } else {
        $orderby = 'banner_order, id DESC';
    }

    $banners = $wpdb->get_results( "SELECT * FROM (SELECT * FROM " . $wpdb->ubm_banners . " WHERE " . $banners_ids_where . "(active_until=-1 OR active_until>='" . date( 'Y-m-d' ) . "') AND banner_type!='swf' AND is_visible='yes' ORDER BY " . $orderby . ") as banners ORDER BY banner_order DESC;" );

    $banners_rotation_html = '';

    if( ! empty( $banners ) ){
        $upload_dir = wp_upload_dir();

        $rotation_number = ubm_get_rotation_number();

        $banners_rotation_html = '<div id="ubm-banners-rotation-n' . $rotation_number . '" data-interval="' . ( $interval * 1000 ) . '" class="ubm_banners_rotation" style="overflow: hidden; width: ' . $width . '; height: ' . $height . ';">';

        $first_banner = true;

        foreach ( $banners as $banner ) {
            $banners_rotation_html .= '<div id="' . $banner->id . '_ubm_banner" class="ubm_rotating_banner"';

            if ( $first_banner ) {
                $first_banner = false;
            } else {
                $banners_rotation_html .= ' style="display: none"';
            }

            $banners_rotation_html .= '>';

            if ( $banner->banner_link != '' ) {
                $banners_rotation_html .= '<a href="' . $banner->banner_link . '" target="' . $banner->link_target . '" rel="' . $banner->link_rel . '">';
            }

            $banners_rotation_html .= '<img src="' . $upload_dir['baseurl'] . '/useful_banner_manager_banners/' . $banner->id . '-' . $banner->banner_name . '.' . $banner->banner_type . '" width="100%" height="100%" alt="' . $banner->banner_alt . '" />';

            if ( $banner->banner_link != '' ) {
                $banners_rotation_html .= '</a>';
            }

            $banners_rotation_html .= '</div>';
        }

        $banners_rotation_html .= '</div>';

        $rotation_number ++;

        ubm_set_rotation_number( $rotation_number );
    }

    return $banners_rotation_html;
}

add_action( 'admin_enqueue_scripts', 'ubm_load_admin_scripts' );

function ubm_load_admin_scripts( $hook ) {
    if ( $hook != 'useful-banner-manager/banners.php' ) {
        return;
    }

    global $ubm_plugin_url;

    wp_enqueue_style( 'jquery-ui', $ubm_plugin_url . '/css/jquery-ui.min.css' );

    wp_enqueue_script( 'jquery-ui', $ubm_plugin_url . '/javascript/jquery-ui.min.js', array( 'jquery' ) );
}

add_action( 'wp_enqueue_scripts', 'ubm_load_scripts' );

function ubm_load_scripts() {
    global $ubm_plugin_url;

    wp_enqueue_script( 'jquery' );
    wp_enqueue_script( 'ubm-scripts', $ubm_plugin_url . 'scripts.js', array( 'jquery' ) );
}
?>