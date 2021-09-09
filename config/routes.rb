Rails.application.routes.draw do
  get 'goods/new'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :goods do
    member  do
      get 'stock'
      get 'filling_report'
      patch 'filling_report_func'
    end
  end
  
  get '/product_reports', to: 'goods#product_report'
  resources :items do
    member do
      get 'edit_material_info'
      patch 'update_material_info'
    end
    resources :products do
      member do
        get 'production_new'
        patch 'production_create'
      end
    end
  end
end
