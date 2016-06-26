( function( $ ) {
	// Responsive videos
	var $all_videos = $( '.entry-content' ).find( 'iframe[src*="player.vimeo.com"], iframe[src*="youtube.com"], iframe[src*="youtube-nocookie.com"], iframe[src*="dailymotion.com"],iframe[src*="kickstarter.com"][src*="video.html"], object, embed' ),
		header_height = $( '#header' ).outerHeight(),
		$body = $( 'body' );

	$all_videos.not( 'object object' ).each( function() {
		var $video = $(this);

		if ( $video.parents( 'object' ).length )
			return;

		if ( ! $video.prop( 'id' ) )
			$video.attr( 'id', 'rvw' + Math.floor( Math.random() * 999999 ) );

		$video
			.wrap( '<div class="responsive-video-wrapper" style="padding-top: ' + ( $video.attr( 'height' ) / $video.attr( 'width' ) * 100 ) + '%" />' )
			.removeAttr( 'height' )
			.removeAttr( 'width' );
	} );

	$( 'a[href="#"]' ).click( function(e) {
		e.preventDefault();
	} );

	$body.css( 'padding-top', header_height );
	if ( 'fixed' == $( '#header' ).css( 'position' ) ) {
		header_height = ( $body.hasClass( 'admin-bar' ) ) ? header_height + 32 : header_height
		header_height = ( $body.hasClass( 'home' ) ) ? 600 + header_height: header_height
		$(window).bind( 'scroll', function() {
			if ( $(window).scrollTop() > ( header_height - 66 ) )
				$body.addClass( 'shrink-nav' );
			else
				$body.removeClass( 'shrink-nav' );
		} ).scroll();
	}
} )( jQuery );