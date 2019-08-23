Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :carts
    resources :line_items
    resources :orders
    resources :products

    root to: 'users#index'
  end

  devise_for :users
  controller :sessions do
    get 'new_user_session' => :create
    post 'user_session' => :create
    delete 'destroy_user_session' => :destroy
  end

  resources :products do
    get :who_bought, on: :member
  end

  controller :store do
    get :next_page
    get :prev_page
  end

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :cart
    root 'store#index', as: 'store_index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
