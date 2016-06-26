<?php
class UBM_Widget extends WP_Widget {
     function UBM_Widget() {
        $widget_opions = array(
            'classname'     => 'ubm_widget',
            'description'   => 'UBM banners'
        );

		parent::__construct( 'ubm-banners', 'UBM banners', $widget_opions );
     }

     function widget( $args, $instance ) {
        if ( empty( $instance ) ) {
            return;
        }

        global $wpdb;

        extract( $args );

        $title          = $instance['title'];
        $banners_ids    = $instance['banners_ids'];
        $count          = $instance['count'];

        echo( $before_widget );

        if ( ! empty( $title ) ) {
            echo( $before_title . $title . $after_title );
        }

        if ( empty( $banners_ids ) ) {
            $banners_ids_where = '';
        } else {
            $banners_ids = array_map( 'intval', $banners_ids );

            $banners_ids_where = "id IN (" . implode( ',', $banners_ids ) . ") AND ";
        }

        $banners = $wpdb->get_results( "SELECT * FROM (SELECT * FROM " . $wpdb->ubm_banners . " WHERE " . $banners_ids_where . "(active_until=-1 OR active_until>='" . date( 'Y-m-d' ) . "') AND is_visible='yes' ORDER BY RAND() LIMIT " . $count . ") as banners ORDER BY banner_order DESC;" );

        if ( ! empty( $banners ) ) { 
            foreach ( $banners as $banner ) {
                ubm_display_banner( $banner );
            }
        }

        echo( $after_widget );
     }

     function update( $new_instance, $old_instance ) {
        if ( empty( $new_instance ) ) {
            return $old_instance;
        }

        $instance = $old_instance;

		$instance['title']          = esc_attr( $new_instance['title'] );
		$instance['banners_ids']    = isset( $new_instance['banners_ids'] ) ? $new_instance['banners_ids'] : '';

        if ( is_numeric( $new_instance['count'] ) && $new_instance['count'] > 0 ) {
            $instance['count'] = $new_instance['count'];
        } elseif( is_numeric( $old_instance['count'] ) && $old_instance['count'] > 0 ) {
            $instance['count'] = $old_instance['count'];
        } else {
            $instance['count'] = 1;
        }

		return $instance;
     }

     function form( $instance ) {
        global $wpdb;

        $instance = wp_parse_args( (array) $instance, array( 'title' => '', 'banners_ids' => '', 'count' => 1 ) );

		$title          = esc_attr( $instance['title'] );
		$banners_ids    = $instance['banners_ids'];

        if ( $instance['count'] ) {
            $count = intval( $instance['count'] );
        } else {
            $count = 1;
        }

        $banners = $wpdb->get_results( "SELECT id, banner_name, banner_type, banner_title FROM " . $wpdb->ubm_banners . " WHERE is_visible='yes' ORDER BY id;" );

        if ( empty( $banners ) ) {
            ?>
            <p><?php _e( 'There is no visible banner.', 'useful-banner-manager' ); ?> <a href="admin.php?page=useful-banner-manager/banners.php"><?php _e( 'Add Banners', 'useful-banner-manager' ); ?></a></p>
            <?php
        } else {
            ?>
            <p><label><?php _e( 'Title:', 'useful-banner-manager' ); ?> <input class="widefat" name="<?php echo( $this->get_field_name( 'title' ) ); ?>" type="text" value="<?php echo( esc_attr( $title ) ); ?>" /></label></p>
            <table width="100%" style="border-collapse: collapse">
                <caption><?php _e( 'Banners', 'useful-banner-manager' ); ?></caption>
                <?php
                foreach ( $banners as $banner ) {
                ?>
                    <tr><td width="90%" style="border: 1px solid #f1f1f1; text-align: left; padding: 2px 5px"><label for="<?php echo( $this->get_field_id( 'banners_ids' ) ); ?>_<?php echo( $banner->id ); ?>"><?php echo( $banner->banner_title ); ?></label></td><td width="10%" style="border: 1px solid #f1f1f1; text-align: center; padding: 2px 0"><input class="checkbox" id="<?php echo( $this->get_field_id( 'banners_ids' ) ); ?>_<?php echo( $banner->id ); ?>" name="<?php echo( $this->get_field_name( 'banners_ids' ) ); ?>[]" type="checkbox" value="<?php echo( $banner->id ); ?>" <?php if ( is_array( $banners_ids ) ){ if( in_array( $banner->id, $banners_ids ) ) { echo( 'checked="checked"' ); } } ?> /></td></tr>
                <?php
                }
                ?>
            </table><br />
            <p><label><?php _e( 'Number of banners to show:', 'useful-banner-manager' ); ?> <input name="<?php echo( $this->get_field_name( 'count' ) ); ?>" type="text" value="<?php echo( esc_attr( $count ) ); ?>" size="2" /></label></p>
        <?php
        }
    }
}

class UBM_Rotation_Widget extends WP_Widget {
     function UBM_Rotation_Widget() {
        $widget_opions = array(
            'classname'     => 'ubm_rotation_widget',
            'description'   => 'UBM banners rotation'
        );

		parent::__construct( 'ubm-banners-rotation', 'UBM banners rotation', $widget_opions );
     }

     function widget( $args, $instance ) {
        if ( empty( $instance ) ) {
            return;
        }

        global $wpdb;

        extract( $args );

        $title          = $instance['title'];
        $banners_ids    = $instance['banners_ids'];
        $interval       = $instance['interval'];
        $width          = $instance['width'];
        $height         = $instance['height'];

        if ( $instance['orderby'] == 'rand' ) {
            $orderby = 'RAND()';
        } else {
            $orderby = 'banner_order, id DESC';
        }

        echo( $before_widget );

        if ( ! empty( $title ) ) {
            echo( $before_title . $title . $after_title );
        }

        if ( empty( $banners_ids ) ) {
            $banners_ids_where = '';
        } else {
            $banners_ids = array_map( 'intval', $banners_ids );

            $banners_ids_where = "id IN (" . implode( ',', $banners_ids ) . ") AND ";
        }

        $banners = $wpdb->get_results( "SELECT * FROM " . $wpdb->ubm_banners . " WHERE " . $banners_ids_where . "(active_until=-1 OR active_until>='" . date( 'Y-m-d' ) . "') AND is_visible='yes' ORDER BY " . $orderby . ";" );

        if ( ! empty( $banners ) ) {
            $upload_dir = wp_upload_dir();
            ?>
            <div id="<?php echo( $args['widget_id'] ); ?>" data-interval="<?php echo( ( $interval * 1000 ) ); ?>" class="ubm_banners_rotation" style="overflow: hidden; width: <?php echo( $width ); ?>px; height: <?php echo( $height ); ?>px;">
            <?php
            $first_banner = true;

            foreach ( $banners as $banner ) {
                ?>
                <div id="<?php echo( $banner->id ); ?>_ubm_banner" class="ubm_rotating_banner"<?php if ( $first_banner ) { $first_banner = false; } else { echo( ' style="display: none"' ); } ?>>
                    <?php
                    if ( $banner->banner_link != '' ) {
                    ?>
                        <a href="<?php echo( $banner->banner_link ); ?>" target="<?php echo( $banner->link_target ); ?>" rel="<?php echo( $banner->link_rel ); ?>">
                    <?php
                    }
                    ?>
                	<img src="<?php echo( $upload_dir['baseurl'] ); ?>/useful_banner_manager_banners/<?php echo( $banner->id . '-' . $banner->banner_name ); ?>.<?php echo( $banner->banner_type ); ?>" width="<?php echo( $width ); ?>" height="<?php echo( $height ); ?>" alt="<?php echo( $banner->banner_alt ); ?>" />
                    <?php
                    if ( $banner->banner_link != '' ) {
                    ?>
                        </a>
                    <?php
                    }
                    ?>
                </div>
                <?php
            }
            ?>
            </div>
            <?php
        }

        echo( $after_widget );
     }

     function update( $new_instance, $old_instance ) {
        if ( empty( $new_instance ) ) {
            return $old_instance;
        }

        $instance = $old_instance;

		$instance['title']          = esc_attr( $new_instance['title'] );
		$instance['banners_ids']    = isset( $new_instance['banners_ids'] ) ? $new_instance['banners_ids'] : '';

        if ( is_numeric( $new_instance['interval'] ) && $new_instance['interval'] > 0 ) {
            $instance['interval'] = $new_instance['interval'];
        } elseif ( is_numeric( $old_instance['interval'] ) && $old_instance['interval'] > 0 ) {
            $instance['interval'] = $old_instance['interval'];
        } else {
            $instance['interval'] = 10;
        }

        if ( is_numeric( $new_instance['width'] ) && $new_instance['width'] > 0 ) {
            $instance['width'] = $new_instance['width'];
        } elseif ( is_numeric( $old_instance['width'] ) && $old_instance['width'] > 0 ) {
            $instance['width'] = $old_instance['width'];
        } else {
            $instance['width'] = 180;
        }

        if ( is_numeric( $new_instance['height'] ) && $new_instance['height'] > 0 ) {
            $instance['height'] = $new_instance['height'];
        } elseif ( is_numeric( $old_instance['height'] ) && $old_instance['height'] > 0 ) {
            $instance['height'] = $old_instance['height'];
        } else {
            $instance['height'] = 180;
        }

        if ( isset( $new_instance['orderby'] ) && $new_instance['orderby'] == 'rand' ) {
            $instance['orderby'] = 'rand';
        } else {
            $instance['orderby'] = 'banner_order, id';
        }

		return $instance;
     }

     function form( $instance ) {
        global $wpdb;

        $instance = wp_parse_args( (array) $instance, array( 'title' => '', 'banners_ids' => '', 'orderby' => 'banner_order, id' ) );

		$title          = esc_attr( $instance['title'] );
		$banners_ids    = $instance['banners_ids'];

        if ( empty( $instance['interval'] ) ) {
            $interval =  10;
        } else {
            $interval =  intval( $instance['interval'] );
        }

        if ( empty( $instance['width'] ) ) {
            $width =  180;
        } else {
            $width =  intval( $instance['width'] );
        }

        if ( empty( $instance['height'] ) ) {
            $height =  180;
        } else {
            $height =  intval( $instance['height'] );
        }

        $banners = $wpdb->get_results( "SELECT id, banner_title FROM " . $wpdb->ubm_banners . " WHERE is_visible='yes' AND banner_type!='swf' ORDER BY id;" );

        if ( empty( $banners ) ) {
        ?>
            <p><?php _e( 'There is no visible banner.', 'useful-banner-manager' ); ?> <a href="admin.php?page=useful-banner-manager/banners.php"><?php _e( 'Add Banners', 'useful-banner-manager' ); ?></a></p>
        <?php
        } else {
            ?>
            <p><label><?php _e( 'Title:', 'useful-banner-manager' ); ?>	<input class="widefat" id="<?php echo( $this->get_field_id( 'title' ) ); ?>" name="<?php echo( $this->get_field_name( 'title' ) ); ?>" type="text" value="<?php echo( esc_attr( $title ) ); ?>" /></label></p>
            <table width="100%" style="border-collapse: collapse">
                <caption><?php _e( 'Banners', 'useful-banner-manager' ); ?></caption>
                <?php
                foreach ( $banners as $banner ) {
                    ?>
                    <tr><td width="90%" style="border: 1px solid #f1f1f1; text-align: left; padding: 2px 5px"><label for="<?php echo( $this->get_field_id( 'banners_ids' ) ); ?>_<?php echo( $banner->id ); ?>"><?php echo( $banner->banner_title ); ?></label></td><td width="10%" style="border: 1px solid #f1f1f1; text-align: center; padding: 2px 0"><input class="checkbox" id="<?php echo( $this->get_field_id( 'banners_ids' ) ); ?>_<?php echo( $banner->id ); ?>" name="<?php echo( $this->get_field_name( 'banners_ids' ) ); ?>[]" type="checkbox" value="<?php echo( $banner->id ); ?>" <?php if ( is_array( $banners_ids ) ) { if ( in_array( $banner->id, $banners_ids ) ) { echo( 'checked="checked"' ); } } ?> /></td></tr>
                <?php
                }
                ?>
            </table>
            <br />
            <p><label><?php _e( 'Interval:', 'useful-banner-manager' ); ?> <input name="<?php echo( $this->get_field_name( 'interval' ) ); ?>" type="text" value="<?php echo( esc_attr( $interval ) ); ?>" size="2" /></label> <?php _e( 'seconds', 'useful-banner-manager' ); ?></p>
            <p><label><?php _e( 'Width of rotating banners:', 'useful-banner-manager' ); ?> <input name="<?php echo( $this->get_field_name( 'width' ) ); ?>" type="text" value="<?php echo( esc_attr( $width ) ); ?>" size="2" /></label><?php _e( 'px', 'useful-banner-manager' ); ?></p>
            <p><label><?php _e( 'Height of rotating banners:', 'useful-banner-manager' ); ?> <input name="<?php echo( $this->get_field_name( 'height' ) ); ?>" type="text" value="<?php echo( esc_attr( $height ) ); ?>" size="2" /></label><?php _e( 'px', 'useful-banner-manager' ); ?></p>
            <p><label><?php _e( 'Order by rand:', 'useful-banner-manager' ); ?> <input class="checkbox" name="<?php echo( $this->get_field_name( 'orderby' ) ); ?>" type="checkbox" value="rand" <?php if ( $instance['orderby'] == 'rand' ) { echo( 'checked="checked"' ); } ?> /></label></p>
            <?php
        }
     }
}
?>