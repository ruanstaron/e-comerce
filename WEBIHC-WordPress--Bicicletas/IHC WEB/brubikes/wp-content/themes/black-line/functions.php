<?php
add_action( 'after_setup_theme', 'black_line_setup' );
function black_line_setup() {
	add_theme_support( 'post-thumbnails' );
	set_post_thumbnail_size(166, 124, TRUE);
	global $content_width;
	if ( ! isset( $content_width ) )
	$content_width = 960;
	add_theme_support( 'automatic-feed-links' );
	add_action( 'wp_enqueue_scripts', 'black_line_frontend' );
	add_editor_style( 'editor-style.css' );
	add_theme_support( 'woocommerce' );
	add_image_size( 'black-line-logo-size', 330, 1000, true );
    add_theme_support( 'site-logo', array( 'size' => 'black-line-logo-size' ) );
    register_nav_menu( 'primary', __( 'Navigation Menu', 'black-line' ) );
    load_theme_textdomain( 'black-line', get_template_directory() . '/languages' );
}
function black_line_widgets() {
	register_sidebar( 
		array(
	    'name' => __( 'sidebar-left', 'black-line' ),  	  
	    'id'   => 'sidebar-left',
		) 
	);
	register_sidebar( 
		array(
	    'name' => __( 'sidebar-head', 'black-line' ),  	  
	    'id'   => 'sidebar-head',
		) 
	);
	register_sidebar( 
		array(
	    'name' => __( 'sidebar-footer1', 'black-line' ),  	  
	    'id'   => 'sidebar-footer1',
		) 
	);
	register_sidebar( 
		array(
	    'name' => __( 'sidebar-footer2', 'black-line' ),  	  
	    'id'   => 'sidebar-footer2',
		) 
	);
	register_sidebar( 
		array(
	    'name' => __( 'sidebar-footer3', 'black-line' ),  	  
	    'id'   => 'sidebar-footer3',
		) 
	);
}
add_action( 'widgets_init', 'black_line_widgets' );
add_filter('loop_shop_per_page', create_function('$cols', 'return 12;'));
add_filter('loop_shop_columns', 'black_line_loop_columns');
if (!function_exists('black_line_loop_columns')) {
	function black_line_loop_columns() {
		return 3;
	}
}
if ( ! function_exists( 'woocommerce_output_related_products' ) ) {
   function woocommerce_output_related_products() {
		$args = array(
		'posts_per_page' => 3,
		'columns' => 3,
		'orderby' => 'rand'
		);
		 woocommerce_related_products( apply_filters( 'woocommerce_output_related_products_args', $args ) );
	}
}
function black_line_frontend() {
 	wp_enqueue_style( 'black-line-style', get_stylesheet_uri() );
}
function black_line_wp_title( $title, $sep ) {
	global $paged, $page;
	if ( is_feed() )
		return $title;
	$title .= get_bloginfo( 'name' );
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		$title = "$title $sep $site_description";
	if ( $paged >= 3 || $page >= 3 )
		$title = "$title $sep " . sprintf( __( 'Page %s', 'black-line' ), max( $paged, $page ) );
	return $title;
}
add_filter( 'wp_title', 'black_line_wp_title', 10, 3 );
if ( is_singular() ) wp_enqueue_script( "comment-reply" );
add_filter( 'wp_tag_cloud', 'black_line_tag_cloud' );
function black_line_tag_cloud( $tags ){
    return preg_replace(
        "~ style='font-size: (\d+)pt;'~",
        ' class="tag-cloud-size-\10"',
        $tags
    );
}
add_filter('add_to_cart_fragments', 'black_line_fragment');
function black_line_fragment( $fragments ) 
{
    global $woocommerce;
    ob_start(); ?>
    <a class="cart-contents" href="<?php echo $woocommerce->cart->get_cart_url(); ?>" title="<?php _e('View your shopping cart', 'black-line'); ?>"><?php echo sprintf(_n('%d item', '%d items', $woocommerce->cart->cart_contents_count, 'black-line'), $woocommerce->cart->cart_contents_count);?> <?php echo $woocommerce->cart->get_cart_total(); ?></a>
    <?php
    $fragments['a.cart-contents'] = ob_get_clean();
    return $fragments;
}
function black_line_menu() {
	add_theme_page('Black Line Setup', 'Free vs PRO ', 'edit_theme_options', 'black-line', 'black_line_menu_page');
}
add_action('admin_menu', 'black_line_menu');
function black_line_menu_page() {
echo '
<br>
<center><h1 style="font-size:79px;">' . __( 'Theme Black Line free', 'black-line' ) . '</h1></ceter>
<br><br><br>
	<center><h1>' . __( '5 Sidebar for theme Black Line', 'black-line' ) . '</h1></ceter>
<br>
<center><img src="' . get_template_directory_uri() . '/images/black-line-free-sidebar.jpg"></center>
<br><br><br>
<h1><center>' . __( 'Site ', 'black-line' ) . '<a href="http://justpx.com/black-line-free-documentation/">' . __( 'Black Line free ', 'black-line' ) . '</a>' . __( ' -  documentation (Logo, favicon, font, ...).', 'black-line' ) . '</center></h1><br><br>
<br><br>
<center><img src="' . get_template_directory_uri() . '/images/pro-vs-free.png"></center><br><br>
<center><b>' . __( 'Localization Ready:', 'black-line' ) . '</b> ' . __( 'Chinese, Czech, Dutch, English, French, German, Greek, Hungarian, Indonesian, Italian, Japanese, Polish, Romana, Russian, Spanish, ... and other.  Add ', 'black-line' ) . '<a href="http://justpx.com/your-language">' . __( 'Your language', 'black-line' ) . '</a>. </center><br/><br/>
<br><br>
<center><h1 style="font-size:79px;">' . __( 'Theme Black Line PRO', 'black-line' ) . '</h1></ceter><br><br>
<center><h1><font color="#dd3f56">10%</font>' . __( ' Discount - Code: ', 'black-line' ) . '<font color="#dd3f56">justpx10</font></h1></ceter>
<br/><br/><br/><br/>
<center><h1>' . __( 'Black Line PRO 32 Sidebar Home page 1', 'black-line' ) . '</h1></ceter>
<br/><br/>
<center><img src="' . get_template_directory_uri() . '/images/black-line-home-page4.jpg"></center>
<br/><br/>
<center><img src="' . get_template_directory_uri() . '/images/admin-1.jpg"></center><br/><br/><center><img src="' . get_template_directory_uri() . '/images/admin-2.jpg"></center><br/><br/><center><img src="' . get_template_directory_uri() . '/images/admin-3.jpg"></center><br/><br/><center><img src="' . get_template_directory_uri() . '/images/admin-4.jpg"></center><br/><br/><center><img src="' . get_template_directory_uri() . '/images/admin-5.jpg"></center><br/><br/>
<h1><center>' . __( 'Buy theme', 'black-line' ) . '  <a href="http://justpx.com/product/black-line-pro/">' . __( 'Black line PRO', 'black-line' ) . '</a></center></h1><br><br>
';
}
?>