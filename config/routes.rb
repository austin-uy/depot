Rails.application.routes.draw do
  devise_for :users
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'new_user_session' => :create
    post 'user_session' => :create
    delete 'destroy_user_session' => :destroy
  end

  resources :users
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
    resources :carts
    root 'store#index', as: 'store_index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
