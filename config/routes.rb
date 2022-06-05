Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/edit'
  get 'comments/show'
  get 'comments/index'
  root to: 'posts#index'
  resources :posts

  resources :posts do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
