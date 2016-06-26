<?php
/**
 * The front page template.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @since 1.0.0
 */
get_header(); ?>

	<?php bavotasan_header_image(); ?>

	<div class="home-container">
		<div class="wrapper">
		<?php
		if ( 'page' == get_option('show_on_front') ) {
			include( get_page_template() );
		} else {
			?>
			<div class="container">
				<div class="row">
					<div id="primary" <?php bavotasan_primary_attr(); ?>>
				        <?php
						if ( have_posts() ) {
							while ( have_posts() ) : the_post();
								get_template_part( 'content', get_post_format() );
							endwhile;

							bavotasan_pagination();
						} else {
							if ( current_user_can( 'edit_posts' ) ) {
								// Show a different message to a logged-in user who can add posts.
								?>
								<article id="post-0" class="post no-results not-found">
									<h1 class="entry-title"><?php _e( 'Nothing Found', 'tienda' ); ?></h1>

									<div class="entry-content description clearfix">
										<p><?php printf( __( 'Ready to publish your first post? <a href="%s">Get started here</a>.', 'tienda' ), admin_url( 'post-new.php' ) ); ?></p>
									</div><!-- .entry-content -->
								</article>
								<?php
							} else {
								get_template_part( 'content', 'none' );
							} // end current_user_can() check
						}
						?>
					</div><!-- #primary.c8 -->
					<?php get_sidebar(); ?>
				</div>
			</div>
			<?php
		}
		?>
		</div>
	</div>

<?php get_footer(); ?>