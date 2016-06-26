<?php
/**
 * The template for displaying Search Results pages.
 *
 * @since 1.0.0
 */
get_header(); ?>

<div class="container">
	<div class="row">
	    <section id="primary" <?php bavotasan_primary_attr(); ?>>
		    <?php
			   $search_post_type = ( isset( $_GET['search_post_type'] ) ) ? $_GET['search_post_type'] : '';
			if ( is_woocommerce_activated() && 'post' != $search_post_type ) {
				$args = array(
					's' => esc_attr( $_GET['s'] ),
					'post_type' => 'product',
					'posts_per_page' => 12
				);
				$product_search_query = new WP_Query( $args );
				?>
				<?php if ( $product_search_query->have_posts() ) : ?>
				<header id="archive-header">
					<h1 class="entry-title page-header clearfix"><?php bavotasan_search_title( $product_search_query ); ?></h1>
				</header>

				<div class="woocommerce columns-4">
					<ul class="products">
						<?php
						while ( $product_search_query->have_posts() ) : $product_search_query->the_post();
							wc_get_template_part( 'content', 'product' );
					    endwhile;
						?>
					</ul>
				</div>
				<?php endif; ?>
				<?php
				bavotasan_search_pagination( $product_search_query );

			    wp_reset_query();
		    }
			?>

			<?php
			if ( 'product' != $search_post_type ) {
				global $wp_query;
				if ( have_posts() ) : ?>
					<header id="archive-header">
						<h1 class="entry-title page-header clearfix"><?php bavotasan_search_title( $wp_query ); ?></h1>
					</header>
					<?php
					while ( have_posts() ) : the_post();
						get_template_part( 'content', get_post_format() );
					endwhile;

					bavotasan_search_pagination( $wp_query );
				else :
					get_template_part( 'content', 'none' );
				endif;
			}
			?>
		</section><!-- #primary.c8 -->

		<?php get_sidebar(); ?>
	</div>
</div>

<?php get_footer(); ?>