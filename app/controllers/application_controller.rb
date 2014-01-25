class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
	before_filter :init_features, :init_common

	def init_features
		@features = {}
		
		$features.each_pair do |key, feature_list|
			feature_list ||= []
			if key == :on
				feature_list.each { |feature| @features[feature] = true }
			else
				feature_list.each { |feature| @features[feature] = false }
			end
		end

		@features.each_key do |feature|
			cookie_name = "feature_#{feature}"
			if cookies["feature_#{feature}"] == "0"
				@features[feature] = false
			elsif cookies["feature_#{feature}"] == "1"
				@features[feature] = true
			end
		end
	end

	def on?(feature)
		@features[feature] == true
	end
	helper_method :on?

	def init_common
		@layout_options = LayoutOptions.new
	end

end
