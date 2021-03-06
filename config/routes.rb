Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'home#index'
	#get 'recipesbycuisine/:id', to: 'recipes#bycuisine'
	#get 'recipesbyname/:title', to: 'recipes#search', as: 'search_recipes'
	resources :recipes, only: [:index, :show, :new, :create, :edit, :patch, :update] do
		get 'search', on: :collection
		get 'all',    on: :collection
	end
	resources :cuisines, only: [:index, :show, :new, :create, :edit, :patch, :update]
	resources :recipe_types, only: [:index, :show, :new, :create, :edit, :patch, :update] 
end
