<?php
/**
 * The template for displaying article footers
 *
 * @since 1.0.0
 */
if ( is_singular() ) {
	?>
	<footer class="clearfix">
	    <?php
		    wp_link_pages( array( 'before' => '<p id="pages">' . __( 'Pages:', 'tienda' ) ) );
			the_tags( '<p class="tags"><span><i class="fa fa-tags"></i> ' . __( 'Tags:', 'tienda' ) . '</span>', ' ', '</p>' );
		    edit_post_link( __( 'Edit', 'tienda' ), '<p class="edit-link">', '</p>' );
	    ?>
	</footer><!-- .entry -->
	<?php
}