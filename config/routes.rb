Rails.application.routes.draw do
  get 'welcome/index'

  resources :playlists
  
  root 'welcome#index'
  
  get 'auth/spotify/callback', to: 'users#spotify'
end
