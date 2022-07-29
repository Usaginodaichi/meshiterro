Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  root to:"homes#top"
  devise_for :users

  resources :post_images, only: [:new,:create,:index,:show]

  get'homes/about',as: 'about'

end
