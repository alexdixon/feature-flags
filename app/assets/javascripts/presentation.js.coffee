# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	if $('#js-example-slide').length > 0 && Feature.on('js_example')
		# TODO: fix async issues (shouldn't resolve the callback
		setTimeout( ->
			$('#js-example-slide h2.hidden').removeClass('hidden')
		, 3000)
