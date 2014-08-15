Rails.application.routes.draw do

	root "houses#index"

	resources :houses

	resources :users do 
		# This resource depends on a user
		resources :houses, only: [:show, :index]
	end

	resource :session, only: [:new, :create, :destroy]
	resources :orders
end
