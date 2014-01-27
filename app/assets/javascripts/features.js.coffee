# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Feature class for use in all views

featureHash = {}

window.Feature = 
	on: (feature) ->
		featureHash[feature] == true

	setFeatures: (features) ->
		featureHash = features

# Feature switch page UI javascript
$ ->
	toggleFeature = (feature_name, enabled) ->
		if enabled
			$.cookie("feature_#{feature_name}", 1, {expires: 30, path: '/'})
		else
			$.removeCookie("feature_#{feature_name}")

	$('#feature-switches input').change (event) ->
		$target = $(event.target)
		feature = $target.data('feature')
		toggleFeature(feature, $target.is(':checked'))
