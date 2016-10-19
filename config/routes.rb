Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new, :create, :edit, :update]
  end
  resources :songs, only: [:show, :new, :create, :edit, :update]
  resources :playlists, only: [:index, :new, :create, :show, :edit, :update]

end
