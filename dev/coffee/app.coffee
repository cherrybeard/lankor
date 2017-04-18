$ ->
	$('[data-popup-open]').popupOpen()
	$('[data-reviews-more]').reviewsMore()
	$('[data-menu-open]').menuOpen()
	$('form#callback').mailForm()
	$('[data-scroll-to]').scroller()
	$('[data-appear-animation]').appearAnimation()

	$body = $('body')
	setInterval ->
		if $(window).scrollTop() > 300
		  $body.attr('data-scrolling-state', 'scrolled')
		else
		  $body.attr('data-scrolling-state', '')
	, 200
