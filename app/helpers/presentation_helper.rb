module PresentationHelper

	def slide_url(index)
		url_for action: 'slide_n', slide_index: index
	end
end
