class HomeController < ApplicationController

	def index
		@recipes = Recipe.last(6)
		@cuisines = Cuisine.all
	end

	def show
		@recipes = Recipe.find( params[:recipe][:id] )
	end
end
