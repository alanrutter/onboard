Rails.application.routes.draw do

	root "houses#index"

	resources :houses

	resources :users do 
		resource :session
	end

end
