Rails.application.routes.draw do
  resources :songs, only: [:new, :create]
end
