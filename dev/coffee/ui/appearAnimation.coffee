( ($) ->

	$.fn.extend
	  appearAnimation: ->
	    self = $.fn.appearAnimation
	    $(this).each (i, el) ->
	      self.init el

	$.extend $.fn.appearAnimation,
		init: (el) ->

			$el 	= $(el)
			$body = $('body')
			selector = $el.attr('data-appear-animation')
			initialized = $el.attr('data-appear-initialized')

			inView(selector).on 'enter', ->
				unless initialized == 'yes'
					$el.find('[data-appear-animate]').attr('data-appear-show', 'show')
					$el.attr('data-appear-initialized', 'yes')



) jQuery
