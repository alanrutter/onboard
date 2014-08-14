Rails.application.routes.draw do

  get 'session/create'

  get 'session/new'

  get 'session/destroy'

	root "houses#index"

	resources :houses

	resources :users do 
		resource :session
	end

end
