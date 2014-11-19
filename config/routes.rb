Rails.application.routes.draw do

 
	root 'welcome#index'

	get 'users/index'

	get 'songs/:playlist_id' => 'users#get_songs'

	get 'auth/spotify/callback', to: 'welcome#spotify'

	get 'sessions' => 'sessions#create'

	get '/logout', :to => 'sessions#destroy'

	get 'songs_echowrap' => 'users#get_echonest'

	resources :users
	resources :welcome
end
