<?php
/**
 * Defining constants
 *
 * @since 1.0.0
 */
$bavotasan_theme_data = wp_get_theme();
define( 'BAVOTASAN_THEME_URL', get_template_directory_uri() );
define( 'BAVOTASAN_THEME_TEMPLATE', get_template_directory() );
define( 'BAVOTASAN_THEME_VERSION', trim( $bavotasan_theme_data->Version ) );
define( 'BAVOTASAN_THEME_NAME', $bavotasan_theme_data->Name );

/**
 * Includes
 *
 * @since 1.0.0
 */
require( BAVOTASAN_THEME_TEMPLATE . '/library/customizer.php' ); // Functions for theme options page
require( BAVOTASAN_THEME_TEMPLATE . '/library/about.php' ); // Functions for how to
require( BAVOTASAN_THEME_TEMPLATE . '/library/preview-pro.php' ); // Functions for upgrade

/**
 * Prepare the content width
 *
 * @since 1.0.3
 */
function bavotasan_content_width() {
	$bavotasan_theme_options = bavotasan_theme_options();

	$bavotasan_array_content = array( 'col-md-2' => .1666, 'col-md-3' => .25, 'col-md-4' => .3333, 'col-md-5' => .4166, 'col-md-6' => .5, 'col-md-7' => .5833, 'col-md-8' => .6666, 'col-md-9' => .75, 'col-md-10' => .8333, 'col-md-12' => 1 );

    return round( $bavotasan_array_content[$bavotasan_theme_options['primary']] * $bavotasan_theme_options['width'] - 30 );
}

if ( ! isset( $content_width ) )
	$content_width = absint( bavotasan_content_width() );

add_action( 'after_setup_theme', 'bavotasan_setup' );
if ( ! function_exists( 'bavotasan_setup' ) ) :
/**
 * Initial setup
 *
 * This function is attached to the 'after_setup_theme' action hook.
 *
 * @uses	load_theme_textdomain()
 * @uses	get_locale()
 * @uses	BAVOTASAN_THEME_TEMPLATE
 * @uses	add_theme_support()
 * @uses	add_editor_style()
 * @uses	add_custom_background()
 * @uses	add_custom_image_header()
 * @uses	register_default_headers()
 *
 * @since 1.0.0
 */
function bavotasan_setup() {
	load_theme_textdomain( 'tienda', BAVOTASAN_THEME_TEMPLATE . '/library/languages' );

	// Add default posts and comments RSS feed links to <head>.
	add_theme_support( 'automatic-feed-links' );

	// This theme styles the visual editor with editor-style.css to match the theme style.
	add_editor_style( 'library/css/admin/editor-style.css' );

	// This theme uses wp_nav_menu() in three location.
	register_nav_menu( 'primary', __( 'Primary Menu', 'tienda' ) );
	register_nav_menu( 'top', __( 'Top Menu', 'tienda' ) );

	// Add support for a variety of post formats
	add_theme_support( 'post-formats', array( 'gallery', 'image', 'video', 'audio', 'quote', 'link', 'status', 'aside' ) );

	// This theme uses Featured Images (also known as post thumbnails) for archive pages
	add_theme_support( 'post-thumbnails', array( 'post', 'product' ) );
	add_image_size( 'featured-img', 840, 410, true );

	// Add a filter to bavotasan_header_image_width and bavotasan_header_image_height to change the width and height of your custom header.
	add_theme_support( 'custom-header', array(
		'header-text' => false,
		'flex-height' => true,
		'flex-width' => true,
		'random-default' => true,
		'width' => apply_filters( 'bavotasan_header_image_width', 1800 ),
		'height' => apply_filters( 'bavotasan_header_image_height', 600 ),
	) );

	// Add support for custom backgrounds
	add_theme_support( 'custom-background', array(
		'default-color' => 'ffffff',
	) );

	// Add HTML5 elements
	add_theme_support( 'html5', array( 'search-form', 'comment-form', 'comment-list', 'gallery', 'caption' ) );

	// Add title tag support
	add_theme_support( 'title-tag' );

	// Remove default gallery styles
	add_filter( 'use_default_gallery_style', '__return_false' );

	// Add Woocommerce support
	add_theme_support( 'woocommerce' );
}
endif; // bavotasan_setup

add_action( 'wp_head', 'bavotasan_styles' );
/**
 * Add a style block to the theme for the current link color.
 *
 * This function is attached to the 'wp_head' action hook.
 *
 * @since 1.0.0
 */
function bavotasan_styles() {
	$bavotasan_theme_options = bavotasan_theme_options();
	?>
<style>
.container { max-width: <?php echo esc_attr( $bavotasan_theme_options['width'] ); ?>px; }
.home-container { background-color: #<?php echo esc_attr( get_background_color()); ?>; background-image: url(<?php echo esc_url( get_background_image()); ?>); background-repeat: <?php echo get_theme_mod( 'background_repeat', get_theme_support( 'custom-background', 'default-repeat' ) ); ?>; background-position: top <?php echo get_theme_mod( 'background_position_x', get_theme_support( 'custom-background', 'default-position-x' ) ); ?>; }
.wrapper { max-width: <?php echo esc_attr( $bavotasan_theme_options['width'] ) + 45; ?>px; }
</style>
	<?php
}

add_action( 'wp_enqueue_scripts', 'bavotasan_add_js' );
if ( ! function_exists( 'bavotasan_add_js' ) ) :
/**
 * Load all JavaScript to header
 *
 * This function is attached to the 'wp_enqueue_scripts' action hook.
 *
 * @uses	is_admin()
 * @uses	is_singular()
 * @uses	get_option()
 * @uses	wp_enqueue_script()
 * @uses	BAVOTASAN_THEME_URL
 *
 * @since 1.0.0
 */
function bavotasan_add_js() {
	if ( is_singular() && get_option( 'thread_comments' ) )
		wp_enqueue_script( 'comment-reply' );

	wp_enqueue_script( 'bootstrap', BAVOTASAN_THEME_URL .'/library/js/bootstrap.js', array( 'jquery' ), '3.3.4', true );
	wp_enqueue_script( 'theme', BAVOTASAN_THEME_URL .'/library/js/theme.js', array( 'bootstrap' ), '', true );

	wp_enqueue_style( 'theme_stylesheet', get_stylesheet_uri() );
	wp_enqueue_style( 'google_fonts', esc_url( bavotasan_font_url() ), false, null );
	wp_enqueue_style( 'font_awesome', BAVOTASAN_THEME_URL .'/library/css/font-awesome.css', false, '4.3.0', 'all' );
}
endif; // bavotasan_add_js

if ( ! function_exists( 'bavotasan_font_url' ) ) :
/**
 * Prepare Google Fonts if any have been selected.
 *
 * @since 1.0.0
 */
function bavotasan_font_url() {
	return add_query_arg( 'family', 'Raleway:300,300italic,600,600italic,800', '//fonts.googleapis.com/css' );
}
endif;

add_action( 'widgets_init', 'bavotasan_widgets_init' );
if ( ! function_exists( 'bavotasan_widgets_init' ) ) :
/**
 * Creating the two sidebars
 *
 * This function is attached to the 'widgets_init' action hook.
 *
 * @uses	register_sidebar()
 *
 * @since 1.0.0
 */
function bavotasan_widgets_init() {
	register_sidebar( array(
		'name' => __( 'Sidebar', 'tienda' ),
		'id' => 'sidebar',
		'description' => __( 'This is the regular sidebar.', 'tienda' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'Jumbo Headline', 'tienda' ),
		'id' => 'jumbo-headline',
		'description' => __( 'Area on the home page below the header. Designed specifically for one Text widget. ', 'tienda' ),
		'before_widget' => '<aside id="%1$s" class="jumbo-headline %2$s">',
		'after_widget' => '</aside>',
		'before_title' => '<h2>',
		'after_title' => '</h2>',
	) );
}
endif; // bavotasan_widgets_init

/**
 * Add pagination
 *
 * @uses	paginate_links()
 * @uses	add_query_arg()
 *
 * @since 1.0.0
 */
function bavotasan_pagination() {
	global $wp_query;

	// Don't print empty markup if there's only one page.
	if ( $wp_query->max_num_pages < 2 )
		return;
	?>

	<nav class="navigation clearfix" role="navigation">
		<h1 class="sr-only"><?php _e( 'Posts navigation', 'tienda' ); ?></h1>
		<?php if ( get_next_posts_link() ) : ?>
		<div class="nav-previous"><?php next_posts_link( __( '&larr; Older posts', 'tienda' ) ); ?></div>
		<?php endif; ?>

		<?php if ( get_previous_posts_link() ) : ?>
		<div class="nav-next"><?php previous_posts_link( __( 'Newer posts &rarr;', 'tienda' ) ); ?></div>
		<?php endif; ?>
	</nav><!-- .navigation -->
	<?php
	wp_reset_query();
}

if ( ! function_exists( 'bavotasan_comment' ) ) :
/**
 * Callback function for comments
 *
 * Referenced via wp_list_comments() in comments.php.
 *
 * @uses	get_avatar()
 * @uses	get_comment_author_link()
 * @uses	get_comment_date()
 * @uses	get_comment_time()
 * @uses	edit_comment_link()
 * @uses	comment_text()
 * @uses	comments_open()
 * @uses	comment_reply_link()
 *
 * @since 1.0.0
 */
function bavotasan_comment( $comment, $args, $depth ) {
	$GLOBALS['comment'] = $comment;

	switch ( $comment->comment_type ) :
		case '' :
		?>
		<li <?php comment_class(); ?>>
			<div id="comment-<?php comment_ID(); ?>" class="comment-body">
				<div class="comment-avatar">
					<?php echo get_avatar( $comment, 55 ); ?>
				</div>
				<div class="comment-content">
					<div class="comment-author">
						<?php echo get_comment_author_link() . ' '; ?>
					</div>
					<div class="comment-meta">
						<?php
						printf( __( '%1$s at %2$s', 'tienda' ), get_comment_date(), get_comment_time() );
						edit_comment_link( __( 'Edit', 'tienda' ), '  ', '' );
						?>
					</div>
					<div class="comment-text">
						<?php if ( '0' == $comment->comment_approved ) { echo '<em>' . __( 'Your comment is awaiting moderation.', 'tienda' ) . '</em>'; } ?>
						<?php comment_text() ?>
					</div>
					<?php if ( $args['max_depth'] != $depth && comments_open() && 'pingback' != $comment->comment_type ) { ?>
					<div class="reply">
						<?php comment_reply_link( array_merge( $args, array( 'depth' => $depth, 'max_depth' => $args['max_depth'] ) ) ); ?>
					</div>
					<?php } ?>
				</div>
			</div>
			<?php
			break;

		case 'pingback'  :
		case 'trackback' :
		?>
		<li id="comment-<?php comment_ID(); ?>" class="pingback">
			<div class="comment-body">
				<i class="fa fa-paperclip"></i>
				<?php _e( 'Pingback:', 'tienda' ); ?> <?php comment_author_link(); ?><?php edit_comment_link( __( '(edit)', 'tienda' ), ' ' ); ?>
			</div>
			<?php
			break;
	endswitch;
}
endif; // bavotasan_comment

add_filter( 'excerpt_more', 'bavotasan_excerpt' );
if ( ! function_exists( 'bavotasan_excerpt' ) ) :
/**
 * Adds a read more link to all excerpts
 *
 * This function is attached to the 'excerpt_more' filter hook.
 *
 * @param	int $more
 *
 * @return	Custom excerpt ending
 *
 * @since 1.0.0
 */
function bavotasan_excerpt( $more ) {
	return '&hellip; <p class="more-link-p"><a class="more-link" href="' . esc_url( get_permalink( get_the_ID() ) ) . '">' . __( 'Continue reading <span class="meta-nav">&rarr;</span>', 'tienda' ) . '</a></p>';
}
endif; // bavotasan_excerpt

/**
 * Print the attached image with a link to the next attached image.
 *
 * @since 1.0.9
 */
function bavotasan_the_attached_image() {
	$post = get_post();

	$attachment_size = apply_filters( 'bavotasan_attachment_size', array( 810, 810 ) );
	$next_attachment_url = wp_get_attachment_url();

	$attachment_ids = get_posts( array(
		'post_parent' => $post->post_parent,
		'fields' => 'ids',
		'numberposts' => -1,
		'post_status' => 'inherit',
		'post_type' => 'attachment',
		'post_mime_type' => 'image',
		'order' => 'ASC',
		'orderby' => 'menu_order ID',
	) );

	if ( count( $attachment_ids ) > 1 ) {
		foreach ( $attachment_ids as $attachment_id ) {
			if ( $attachment_id == $post->ID ) {
				$next_id = current( $attachment_ids );
				break;
			}
		}

		if ( $next_id )
			$next_attachment_url = get_attachment_link( $next_id );
		else
			$next_attachment_url = get_attachment_link( array_shift( $attachment_ids ) );
	}

	printf( '<a href="%1$s" rel="attachment">%2$s</a>',
		esc_url( $next_attachment_url ),
		wp_get_attachment_image( $post->ID, $attachment_size )
	);
}

add_filter( 'get_search_form', 'bavotasan_search_form_modify' );
/**
 * Add a `screen-reader-text` class to the search form's submit button.
 *
 * @since 1.0.0
 *
 * @param string $html Search form HTML.
 * @return string Modified search form HTML.
 */
function bavotasan_search_form_modify( $html ) {
	return str_replace( array( 'screen-reader-text', 'class="search-submit"' ), array( 'sr-only', 'class="search-submit sr-only"' ), $html );
}

/**
 * Create the required attributes for the #primary container
 *
 * @since 1.0.0
 */
function bavotasan_primary_attr() {
	$bavotasan_theme_options = bavotasan_theme_options();
	$class = ( 'left' == $bavotasan_theme_options['layout'] ) ? $bavotasan_theme_options['primary'] . ' pull-right' : $bavotasan_theme_options['primary'];

	echo 'class="' . esc_attr( $class ) . '"';
}

/**
 * Create the required classes for the #secondary sidebar container
 *
 * @since 1.0.0
 */
function bavotasan_sidebar_class() {
	$bavotasan_theme_options = bavotasan_theme_options();
	$primary = str_replace( 'col-md-', '', $bavotasan_theme_options['primary'] );
	$class = 'col-md-' . ( 12 - $primary );

	echo 'class="' . esc_attr( $class ) . '"';
}

/**
 * Default menu
 *
 * Referenced via wp_nav_menu() in header.php.
 *
 * @since 1.0.0
 */
function bavotasan_default_menu( $args ) {
	extract( $args );

	$output = wp_list_categories( array(
		'title_li' => '',
		'echo' => 0,
		'number' => 5,
		'depth' => 1,
	) );

	echo '<ul class="' . esc_attr( $menu_class ) . '">' . $output . '</ul>';
}

/**
 * Add bootstrap classes to menu items
 *
 * @since 1.0.0
 */
class Bavotasan_Page_Navigation_Walker extends Walker_Nav_Menu {
	function check_current( $classes ) {
		return preg_match( '/(current[-_])|active|dropdown/', $classes );
	}

	function start_lvl( &$output, $depth = 0, $args = array() ) {
		$output .= "\n<ul class=\"dropdown-menu\">\n";
	}

	function start_el( &$output, $item, $depth = 0, $args = array(), $id = 0 ) {
		$item_html = '';
		parent::start_el( $item_html, $item, $depth, $args );

		if ( $item->is_dropdown && ( $depth === 0 ) ) {
			$item_html = str_replace( '<a', '<a class="dropdown-toggle" data-toggle="dropdown" data-target="#"', $item_html );
			$item_html = str_replace( '</a>', ' <span class="caret"></span></a>', $item_html );
		} elseif ( stristr( $item_html, 'li class="divider' ) ) {
			$item_html = preg_replace( '/<a[^>]*>.*?<\/a>/iU', '', $item_html );
		} elseif ( stristr( $item_html, 'li class="nav-header' ) ) {
			$item_html = preg_replace( '/<a[^>]*>(.*)<\/a>/iU', '$1', $item_html );
		}

		$output .= $item_html;
	}

	function display_element( $element, &$children_elements, $max_depth, $depth = 0, $args, &$output ) {
		$element->is_dropdown = !empty( $children_elements[$element->ID] );

		if ( $element->is_dropdown ) {
			if ( $depth === 0 ) {
				$element->classes[] = 'dropdown';
			} elseif ( $depth > 0 ) {
				$element->classes[] = 'dropdown-submenu';
			}
		}
		$element->classes[] = ( $element->current || in_array( 'current-menu-parent', $element->classes ) ) ? 'active' : '';

		parent::display_element( $element, $children_elements, $max_depth, $depth, $args, $output );
	}
}

add_filter( 'wp_nav_menu_args', 'bavotasan_nav_menu_args' );
/**
 * Set our new walker only if a menu is assigned and a child theme hasn't modified it to one level deep
 *
 * This function is attached to the 'wp_nav_menu_args' filter hook.
 *
 * @author Kirk Wight <http://kwight.ca/adding-a-sub-menu-indicator-to-parent-menu-items/>
 * @since 1.0.0
 */
function bavotasan_nav_menu_args( $args ) {
    if ( 1 !== $args[ 'depth' ] && has_nav_menu( 'primary' ) && 'primary' == $args[ 'theme_location' ] )
        $args[ 'walker' ] = new Bavotasan_Page_Navigation_Walker;

    return $args;
}

add_filter( 'post_class', 'bavotasan_post_class' );
/**
 * Add post class
 *
 * @since 1.0.0
 */
function bavotasan_post_class( $classes ) {
   	$classes[] = 'xfolkentry';
   	$classes[] = 'clearfix';

	return $classes;
}

add_filter( 'body_class', 'bavotasan_body_class' );
/**
 * Add post class
 *
 * @since 1.0.0
 */
function bavotasan_body_class( $classes ) {
   	$classes[] = 'basic';

	return $classes;
}

/**
 * Display search results title
 *
 * @since 1.0.0
 */
function bavotasan_search_title( $query  ) {
    $num = $query->found_posts;
    $type = ( isset( $query->query['post_type'] ) ) ? $query->query['post_type'] : 'post';
	$paged = ( get_query_var('paged') ) ? get_query_var( 'paged' ) : 1;
	$posts_per_page = $query->query_vars['posts_per_page'];

	$current_page_count = ( 1 == $paged ) ?  '1-' . $paged * $posts_per_page : ( $paged - 1 ) * $posts_per_page + 1 . '-' . $paged * $posts_per_page;
	$current_page_count = ( $query->max_num_pages == $paged ) ? ( $paged - 1 ) * $posts_per_page + 1 . '-' . $query->found_posts : $current_page_count;

	printf( __( '<span class="pull-left">%1$s</span><span class="displaying pull-right">%2$s of %3$s results for "%4$s"</span>', 'tienda'),
	    esc_attr( ucfirst( $type . 's' ) ),
	    $current_page_count,
	    absint( $query->found_posts ),
	    esc_html( get_search_query() )
	);
}

/**
 * Add search pagination
 *
 * @uses	paginate_links()
 * @uses	add_query_arg()
 *
 * @since 1.0.0
 */
function bavotasan_search_pagination( $query ) {
	$max_page = $query->max_num_pages;
	$paged = ( get_query_var('paged') ) ? get_query_var( 'paged' ) : 1;
    $type = ( isset( $query->query['post_type'] ) ) ? $query->query['post_type'] : 'post';
	$prev_search_post_type = ( 2 == $paged ) ? '' : '&#038;search_post_type=' . esc_attr( $type );

	$next_post_link = str_replace( '&#038;search_post_type=' . esc_attr( $type ), '', next_posts( $max_page, false ) );
	$prev_post_link = str_replace( '&#038;search_post_type=' . esc_attr( $type ), '', previous_posts( false ) );
	$prev_label = ( 2 == $paged ) ? __( 'All results &rarr;', 'tienda' ) : sprintf( __( 'Next %s results &rarr;', 'tienda' ), ucfirst( $type . 's' ) );

	// Don't print empty markup if there's only one page.
	if ( $max_page < 2 )
		return;

	$next_posts_link = ( intval($paged) + 1 <= $max_page ) ? '<a href="' . esc_url( $next_post_link ) . '&#038;search_post_type=' . esc_attr( $type ) . '">' . sprintf( __( '&larr; Previous %s results', 'tienda' ), ucfirst( $type . 's' ) ) . '</a>' : '';
	$prev_posts_link = ( $paged > 1 ) ? '<a href="' . esc_url( $prev_post_link ) . $prev_search_post_type . '">' . $prev_label . '</a>' : '';
	?>

	<nav class="navigation clearfix" role="navigation">
		<h1 class="sr-only"><?php _e( 'Posts navigation', 'tienda' ); ?></h1>
		<?php if ( $next_posts_link ) : ?>
		<div class="nav-previous"><?php echo $next_posts_link; ?></div>
		<?php endif; ?>

		<?php if ( $prev_posts_link ) : ?>
		<div class="nav-next"><?php echo $prev_posts_link; ?></div>
		<?php endif; ?>
	</nav><!-- .navigation -->
	<?php
	wp_reset_query();
}

add_filter( 'pre_get_posts', 'bavotasan_search' );
/**
 * This function modifies the main WordPress query to include an array of
 * post types instead of the default 'post' post type.
 *
 * @param object $query  The original query.
 * @return object $query The amended query.
 */
function bavotasan_search( $query ) {
	if ( $query->is_search && $query->is_main_query() )
		$query->set( 'post_type', array( 'post' ) );

    return $query;
}

/**
 * Display the header image on the home page
 *
 * @uses	get_header_image()
 * @uses	get_custom_header()
 * @uses	is_active_sidebar()
 * @uses	dynamic_sidebar()
 *
 * @since 1.0.0
 */
function bavotasan_header_image() {
	if ( $header_image = get_header_image() ) :
		?>
		<div class="parallax">
			<div class="header-img" style="background-image: url(<?php echo esc_url( $header_image ); ?>); height: <?php echo get_custom_header()->height; ?>px;"></div>
			<?php if ( is_active_sidebar( 'jumbo-headline' ) ) { ?>
			<div class="container">
				<div class="row">
					<div class="home-top">
						<?php dynamic_sidebar( 'jumbo-headline' ); ?>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
		<?php
	endif;
}

/*******************************
 *
 *  Woocommerce compatibility
 *
 *******************************/
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10 );
add_action('woocommerce_before_main_content', 'bavotasan_wrapper_start', 10 );
/**
 * Adds the needed HTML before all WooCommerce pages
 *
 * This function is attached to the 'woocommerce_before_main_content' action hook.
 *
 * @uses	get_query_var()
 * @uses	is_front_page()
 * @uses	bavotasan_header_image()
 * @uses	bavotasan_primary_attr()
 *
 * @since 1.0.0
 */
function bavotasan_wrapper_start() {
	$paged = ( get_query_var('paged') ) ? get_query_var( 'paged' ) : 1;

	if ( is_front_page() && 1 == $paged ) {
		bavotasan_header_image();
		?>
		<div class="home-container">
			<div class="wrapper">
				<?php
	}
	?>
	<div class="container">
		<div class="row">
			<div id="primary" <?php bavotasan_primary_attr(); ?>>
	<?php
}

remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10 );
add_action('woocommerce_after_main_content', 'bavotasan_wrapper_end', 10 );
/**
 * Adds the needed HTML after all WooCommerce pages
 *
 * This function is attached to the 'woocommerce_after_main_content' action hook.
 *
 * @uses	get_query_var()
 * @uses	get_sidebar()
 * @uses	is_front_page()
 *
 * @since 1.0.0
 */
function bavotasan_wrapper_end() {
	$paged = ( get_query_var('paged') ) ? get_query_var( 'paged' ) : 1;
	?>
			</div>
			<?php get_sidebar(); ?>
		</div>
	</div>
	<?php if ( is_front_page() && 1 == $paged ) { ?>
		</div>
	</div>
	<?php
	}
}

/**
 * Displays the shopping cart item in the top menu area
 *
 * @uses	is_cart()
 * @uses	WC()
 * @uses	get_cart_total()
 * @uses	get_cart_contents_count()
 *
 * @since 1.0.0
 */
function storefront_cart_link() {
	if ( is_cart() ) {
		$class = 'current-menu-item';
	} else {
		$class = '';
	}
	?>
	<li class="<?php echo esc_attr( $class ); ?>">
		<a class="cart-contents" href="<?php echo esc_url( WC()->cart->get_cart_url() ); ?>" title="<?php _e( 'View your shopping cart', 'tienda' ); ?>">
			<?php echo wp_kses_data( WC()->cart->get_cart_total() ); ?> <span class="count"><?php echo wp_kses_data( sprintf( _n( '%d Item', '%d Items', WC()->cart->get_cart_contents_count(), 'tienda' ), WC()->cart->get_cart_contents_count() ) );?></span>
		</a>
	</li>
	<?php
}

/**
 * Boolean to see if the WooCommerce plugin has been activated
 *
 * @uses	class_exists()
 *
 * @since 1.0.0
 */
function is_woocommerce_activated() {
	return class_exists( 'woocommerce' ) ? true : false;
}

/**
 * Output the proceed to checkout button.
 *
 * @uses	WC()
 * @uses	get_checkout_url()
 *
 * @since 1.0.0
 */
function woocommerce_button_proceed_to_checkout() {
	$checkout_url = WC()->cart->get_checkout_url();

	?>
	<a href="<?php echo $checkout_url; ?>" class="checkout-button btn btn-danger btn-lg"><?php _e( 'Proceed to Checkout', 'tienda' ); ?></a>
	<?php
}

add_filter( 'woocommerce_order_button_html', 'bavotasan_woocommerce_order_button_html' );
/**
 * Adds certain classes to the WooCommerce order button
 *
 * This function is attached to the 'woocommerce_order_button_html' filter hook.
 *
 * @since 1.0.0
 */
function bavotasan_woocommerce_order_button_html() {
	$order_button_text = apply_filters( 'woocommerce_order_button_text', __( 'Place order', 'tienda' ) );
	return '<input type="submit" class="btn btn-danger btn-lg" name="woocommerce_checkout_place_order" id="place_order" value="' . esc_attr( $order_button_text ) . '" data-value="' . esc_attr( $order_button_text ) . '" />';
}


if ( defined( 'WC_VERSION' ) && version_compare( WC_VERSION, '2.3', '>=' ) )
	add_filter( 'woocommerce_add_to_cart_fragments', 'bavotasan_storefront_cart_link_fragment' );
else
	add_filter( 'add_to_cart_fragments', 'bavotasan_storefront_cart_link_fragment' );
/**
 * Ensure cart contents update when products are added to the cart via AJAX
 *
 * This function is attached to the 'woocommerce_add_to_cart_fragments' || 'add_to_cart_fragments' filter hook.
 *
 * @uses	storefront_cart_link()
 *
 * @since 1.0.0
 * @return array
 */
function bavotasan_storefront_cart_link_fragment( $fragments ) {
	global $woocommerce;

	ob_start();

	storefront_cart_link();

	$fragments['a.cart-contents'] = ob_get_clean();

	return $fragments;
}

add_filter( 'woocommerce_output_related_products_args', 'bavotasan_output_related_products' );
/**
 * Displays 3 related products on single product pages
 *
 * This function is attached to the 'woocommerce_output_related_products_args' filter hook.
 *
 * @since 1.0.0
 * @return array
 */
function bavotasan_output_related_products() {
	return array(
		'posts_per_page' => 3,
		'columns' => 3,
		'orderby' => 'rand'
	);
}

remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_upsell_display', 15 );
add_action( 'woocommerce_after_single_product_summary', 'bavotasan_woocommerce_output_upsells', 15 );
/**
 * Displays 3 upsell products on single product pages
 *
 * This function is attached to the 'woocommerce_after_single_product_summary' filter hook.
 *
 * @since 1.0.0
 * @return array
 */
function bavotasan_woocommerce_output_upsells() {
    woocommerce_upsell_display( 3,3 ); // Display 3 products in rows of 3
}

add_filter( 'woocommerce_product_single_add_to_cart_text', 'bavotasan_custom_cart_button_text' );
add_filter( 'woocommerce_product_add_to_cart_text', 'bavotasan_custom_cart_button_text' );
/**
 * Change the add to cart text if already in cart
 *
 * This function is attached to the 'woocommerce_product_single_add_to_cart_text' && 'woocommerce_product_add_to_cart_text' filter hook.
 *
 * @since 1.0.0
 * @return array
 */
function bavotasan_custom_cart_button_text() {
	global $woocommerce;

	foreach($woocommerce->cart->get_cart() as $cart_item_key => $values ) {
		$_product = $values['data'];

		if( get_the_ID() == $_product->id )
			return __( 'Already in cart', 'tienda' );
	}

	return __( 'Add to cart', 'tienda' );
}