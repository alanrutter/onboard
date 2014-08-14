Rails.application.routes.draw do

  get 'sessions/new'

	root "houses#index"

	resources :houses

	resources :users do 
		resource :houses
	end

	resources :session

end
