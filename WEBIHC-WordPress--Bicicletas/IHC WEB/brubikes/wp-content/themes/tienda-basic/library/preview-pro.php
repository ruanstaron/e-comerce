<?php
class Bavotasan_Preview_Pro {
	private $theme_url = 'http://themes.bavotasan.com/themes/tienda-wordpress-theme/';
	private $theme_name = 'Tienda';

	public function __construct() {
		add_action( 'admin_menu', array( $this, 'admin_menu' ) );
	}

	/**
	 * Add a 'Upgrade' page
	 *
	 * This function is attached to the 'admin_menu' action hook.
	 *
	 * @since 1.0.0
	 */
	public function admin_menu() {
		add_theme_page( sprintf( __( 'Welcome to %s %s', 'tienda' ), BAVOTASAN_THEME_NAME, BAVOTASAN_THEME_VERSION ), __( 'Upgrade to Premium', 'tienda' ), 'edit_theme_options', 'bavotasan_preview_pro', array( $this, 'bavotasan_preview_pro' ) );

		// Remove upgrade page from Appearance menu
		remove_submenu_page( 'themes.php', 'bavotasan_preview_pro' );
	}

	public function bavotasan_preview_pro() {
		?>
		<style>
		.featured-image {
			margin: 20px auto !important;
		}

		.about-wrap .headline-feature h2 {
			text-align: center;
		}

		.about-wrap .dfw h3 {
			text-align: left;
		}

		.changelog.headline-feature.dfw {
			max-width: 68%;
		}

		.changelog.headline-feature.dfw {
			margin-left: auto;
			margin-right: auto;
		}

		.about-wrap ul {
			padding-left: 60px;
			list-style: disc;
			margin-bottom: 20px;
		}

		.about-wrap .theme-badge {
			position: absolute;
			top: 0;
			right: 0;
		}

		.about-wrap .feature-section {
			border: 0;
			padding: 0;
		}

		@media only screen and (max-width: 768px) {
			.changelog.headline-feature.dfw {
				max-width: 100%;
			}

			.about-wrap .theme-badge {
				display: none;
			}
		}
		</style>
		<div class="wrap about-wrap" id="custom-background">
			<h1><?php printf( __( 'Welcome to %s %s', 'tienda' ), BAVOTASAN_THEME_NAME, BAVOTASAN_THEME_VERSION ); ?></h1>

			<div class="about-text">
				<?php printf( __( 'Take your site to the next level with the full version of <em>%s</em>. Check out some of the advanced features that&rsquo;ll give you more control over your site&rsquo;s layout and design.', 'tienda' ), $this->theme_name ); ?>
			</div>
			<div class="theme-badge">
				<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/screenshot_sml.jpg" />
			</div>

			<h2 class="nav-tab-wrapper">
				<a href="<?php echo admin_url( 'themes.php?page=bavotasan_documentation' ); ?>" class="nav-tab"><?php _e( 'Documentation', 'tienda' ); ?></a>
				<a href="<?php echo admin_url( 'themes.php?page=bavotasan_preview_pro' ); ?>" class="nav-tab nav-tab-active"><?php _e( 'Upgrade', 'tienda' ); ?></a>
			</h2>

			<div class="changelog headline-feature dfw">
				<h2><?php _e( 'Site Icon', 'tienda' ); ?></h2>

				<div class="featured-image dfw-container">
					<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/site-icon.jpg" />
				</div>

				<p><?php _e( 'Use the Site Icon uploader to add an image next to your site title and tagline to distinguish your shop and get your branding out there.', 'tienda' ); ?></p>
			</div>
			<hr />

			<div class="changelog headline-feature dfw">
				<h2><?php _e( 'Social Menu', 'tienda' ); ?></h2>

				<div class="featured-image dfw-container">
					<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/social-menu.jpg" />
				</div>

				<p><?php _e( 'Establish your online presence by letting your visitors join your social network. Help them stay up to date on everything you&rsquo;re doing', 'tienda' ); ?></p>
				<p><?php _e( 'Easily add a social menu by creating links to the most popular social media websites.', 'tienda' ); ?></p>
			</div>
			<hr />

			<div class="changelog headline-feature dfw">
				<h2><?php _e( 'Home Page Top Area', 'tienda' ); ?></h2>

				<div class="featured-image dfw-container">
					<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/home-page-widgets.jpg" />
				</div>

				<p><?php _e( 'It&rsquo;s easier to direct customers with a few more call-to-action boxes. With the Home Page Top Area and the custom Image &amp Text widget you can feature certain sections or let your customers know about a current sale.', 'tienda' ); ?></p>
			</div>
			<hr />

			<div class="changelog headline-feature dfw">
				<h2><?php _e( 'Shop Grid Page Template', 'tienda' ); ?></h2>

				<div class="featured-image dfw-container">
					<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/shop-grid.jpg" />
				</div>

				<p><?php _e( 'If you want to add more dynamic flair to the home page, use the included Shop Grid page template. It&rsquo;s designed to display 3 featured products, 4 recent products and 4 on-sale products.', 'tienda' ); ?></p>

				<p><?php _e( 'There&rsquo;s even a custom Shop Grid sidebar that only appears on this page.', 'tienda' ); ?></p>
			</div>
			<hr />

			<div class="changelog headline-feature dfw">
				<h2><?php _e( 'Advanced Color Picker', 'tienda' ); ?></h2>

				<div class="featured-image dfw-container">
					<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/color-picker.jpg" />
				</div>

				<p><?php printf( __( 'Sometimes the default colors just aren&rsquo;t working for you. In %s you can use the advanced color picker to make sure you get the exact colors you want.', 'tienda' ), '<em>' . $this->theme_name . '</em>' ); ?></p>
				<p><?php _e( 'Easily select one of the eight preset colors or dive even deeper into your customization by using a more specific hex code.', 'tienda' ); ?></p>
			</div>
			<hr />

			<div class="changelog headline-feature dfw">
				<h2><?php _e( 'Google Fonts Manager', 'tienda' ); ?></h2>

				<div class="featured-image dfw-container">
					<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/google-fonts.jpg" />
				</div>

				<p><?php _e( 'Web-safe fonts are a thing of the past, so why not try to spice things up a bit?', 'tienda' ); ?></p>
				<p><?php _e( 'Choose from over 670 Google Fonts to improve your site&rsquo;s typeface readability and make things look even more amazing.', 'tienda' ); ?></p>
			</div>
			<hr />

			<div class="changelog headline-feature dfw">
				<h2><?php _e( 'Extended Widgetized Footer', 'tienda' ); ?></h2>

				<div class="featured-image dfw-container">
					<img src="<?php echo BAVOTASAN_THEME_URL; ?>/library/images/extended-footer.jpg" />
				</div>

				<p><?php _e( 'If you need to include more widgets on your site, take advantage of the Extended Footer.', 'tienda' ); ?></p>
				<p><?php _e( 'Use the Customizer to set the number of columns you want to appear. You can also customize your site&rsquo;s copyright notice.', 'tienda' ); ?></p>
			</div>
			<hr />

			<div class="changelog feature-list">
				<h2><?php _e( 'Even More Theme Options', 'tienda' ); ?></h2>
				<div class="feature-section col two-col">
					<div>
						<h4><?php _e( 'Full Width Posts/Pages', 'tienda' ); ?></h4>
						<p><?php _e( 'Each page/post has an option to remove both sidebars so you can use the full width of your site to display whatever you want.', 'tienda' ); ?></p>
					</div>
					<div class="last-feature">
						<h4><?php _e( 'Multiple Sidebars', 'tienda' ); ?></h4>
						<p><?php _e( 'Easily customize pages with different widgets by using the new WooCommerce and Shop Grid sidebars.', 'tienda' ); ?></p>
					</div>
				</div>

				<div class="feature-section col two-col">
					<div>
						<h4><?php _e( 'Bootstrap Shortcodes', 'tienda' ); ?></h4>
						<p><?php printf( __( 'Shortcodes are awesome and easy to use. That&rsquo;s why %s comes with a bunch, like a slideshow carousel, alert boxes and more.', 'tienda' ), '<em>' . $this->theme_name . '</em>' ); ?></p>
					</div>
					<div class="last-feature">
						<h4><?php _e( 'Import/Export Tool', 'tienda' ); ?></h4>
						<p><?php _e( 'Once you&rsquo;ve set up your site exactly how you want, you can easily export the Theme Options and Custom CSS for safe keeping.', 'tienda' ); ?></p>
					</div>
				</div>
			</div>
			<hr />

			<p><a href="<?php echo $this->theme_url; ?>" target="_blank" class="button-primary button-large"><?php printf( __( 'Upgrade %s Now &rarr;', 'tienda' ), '<strong>' . BAVOTASAN_THEME_NAME . '</strong>' ); ?></a></p>
		</div>
		<?php
	}
}
$bavotasan_preview_pro = new Bavotasan_Preview_Pro;