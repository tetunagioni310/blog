Rails.application.routes.draw do
  
  devise_for :users
  
  root 'home#top'
  get 'posts/thanx', to: 'posts#thanx'
  resources :posts, only: [:index,:show,:edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
