( ($) ->

	$.fn.extend
	  menuOpen: ->
	    self = $.fn.menuOpen
	    $(this).each (i, el) ->
	      self.init el

	$.extend $.fn.menuOpen,
		init: (el) ->

			$el 	= $(el)
			$body = $('body')

			$el.on 'click', (e) ->
				if $el.attr('data-menu-open') == 'open'
					$body.attr('data-menu-state', 'open')
				else
					$body.attr('data-menu-state', '')



) jQuery
