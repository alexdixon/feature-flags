class PresentationController < ApplicationController
	def index
	end

	def slide_n
		index = params[:slide_index] || 1
		render "slide#{index}"
	end
end
