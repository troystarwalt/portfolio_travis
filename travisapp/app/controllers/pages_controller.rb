class PagesController < ApplicationController
	def show
		@recipe = Recipe.last
		render "home"
	end
end
