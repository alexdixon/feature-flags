# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	toggleFeature = (feature_name, enabled) ->
		if enabled
			$.cookie("feature_#{feature_name}", 1, {expires: 30, path: '/'})
		else
			$.removeCookie("feature_#{feature_name}")

	$('input#feature_better_layout').change ->
		toggleFeature('better_layout', $(@).is(':checked'))
