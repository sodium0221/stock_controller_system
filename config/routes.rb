Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :items do
    member do
      get 'edit_material_info'
      patch 'update_material_info'
    end
    resources :products do
      member do
        get 'new_rog'
        patch 'create_rog'
      end
    end
  end
end
