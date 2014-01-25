class PresentationController < ApplicationController
	def index
	end

	def slide_n
		index = (params[:slide_index] || 1).to_i
		if on?(:navigation)
			top_url = { action: 'index' }
			prev_url = { action: 'slide_n', slide_index: index - 1 } if index > 2
			next_url = { action: 'slide_n', slide_index: index + 1 }
			@layout_options.set_navigation(next_url, prev_url, top_url)
		end
		render "slide#{index}"
	end
end
