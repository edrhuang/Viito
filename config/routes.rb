Rails.application.routes.draw do

  
	root 'users#index'

	get 'auth/spotify/callback', to: 'users#spotify'

	get 'sessions' => 'sessions#create'

	get '/logout', :to => 'sessions#destroy'

	resources :users
end
