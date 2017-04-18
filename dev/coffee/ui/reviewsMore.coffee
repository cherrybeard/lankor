( ($) ->

	$.fn.extend
	  reviewsMore: ->
	    self = $.fn.reviewsMore
	    $(this).each (i, el) ->
	      self.init el

	$.extend $.fn.reviewsMore,
		init: (el) ->

			$el 	= $(el)
			$body = $('body')

			$el.on 'click', (e) ->
				$body.attr('data-review-state', 'all')



) jQuery
