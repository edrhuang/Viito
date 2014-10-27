Rails.application.routes.draw do

  resources :playlists
  
  root 'users#index'
  
  get 'auth/spotify/callback', to: 'users#spotify'

  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessionsdestroy'
end
