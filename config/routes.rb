Rails.application.routes.draw do

  get 'data/enter'

  get 'data/search'

  resources :tbdata
  resources :komen

  resources :products do
    get "delete"
  end

  resources :posts
  resources :books do
    member do
      patch :publish
    end
  end

  resources :tasks
  resources :obat


  get 'obat/index'

  get 'obat/new'

  resources :barangs
  root 'latihan#index'

end
