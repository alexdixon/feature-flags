class LayoutOptions
	attr_reader :nav_next, :nav_prev, :nav_top

	def initialize
		@include_navigation = false
	end

	def include_navigation?
		@include_navigation
	end

	def set_navigation(next_url, prev_url, top_url)
		@include_navigation = true
		@nav_next = next_url
		@nav_prev = prev_url
		@nav_top = top_url
	end

end
