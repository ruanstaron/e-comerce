<?php
/**
 * The template for displaying the footer.
 *
 * Contains footer content and the closing of the main and #page div elements.
 *
 * @since 1.0.0
 */
?>
		</main><!-- main -->

		<footer id="footer" role="contentinfo">
			<div id="footer-content" class="container">
				<div class="row">
					<div class="copyright col-lg-12">
						<p class="footer-notice pull-left"><?php printf( __( 'Copyright &copy; %s %s. All Rights Reserved.', 'tienda' ), date( 'Y' ), '<a href="' . esc_url( home_url() ) . '">' . get_bloginfo( 'name' ) . '</a>' ); ?>
						<p class="pull-right">
							<?php printf( __( 'The %s Theme by %s.', 'tienda' ), BAVOTASAN_THEME_NAME, '<a href="http://themes.bavotasan.com/">bavotasan.com</a>' ); ?>
						</p>
					</div><!-- .col-lg-12 -->
				</div><!-- .row -->
			</div><!-- #footer-content.container -->
		</footer><!-- #footer -->

	</div><!-- #page -->

<?php wp_footer(); ?>
</body>
</html>