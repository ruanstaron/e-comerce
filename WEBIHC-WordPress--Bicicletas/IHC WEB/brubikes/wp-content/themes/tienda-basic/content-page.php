<?php
/**
 * The template for displaying pages
 *
 * @since 1.0.0
 */
?>
	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<?php $class = ( is_search() ) ? '' : ' page-header'; ?>
		<h1 class="entry-title<?php echo esc_attr( $class ); ?>">
			<?php if ( is_page() ) : ?>
				<?php the_title(); ?>
			<?php else : ?>
				<a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark"><?php the_title(); ?></a>
			<?php endif; // is_single() ?>
		</h1>

	    <div class="entry-content description clearfix">
		    <?php
				if ( is_search() )
					the_excerpt();
				else
				    the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', 'tienda') );
			?>
	    </div><!-- .entry-content -->

	    <?php get_template_part( 'content', 'footer' ); ?>
	</article><!-- #post-<?php the_ID(); ?> -->