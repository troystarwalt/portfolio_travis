class PagesController < ApplicationController
	def show
		@recipe = Recipe.first
		render "home"
	end
end
