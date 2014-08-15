Rails.application.routes.draw do

	root "houses#index"

	resources :houses

	resources :users do 
		# This resource depends on a user
		resources :houses
	end

	resource :session

end
