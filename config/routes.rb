Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
        resources :items, only: [:index, :show, :create]
        resources :orders, only: [:index, :show, :create]
        resources :pizza_types, only: [:index]

        get '/menu', to: 'pizza_types#index'
        get "*path", to: redirect('/api/v1/menu')
  
    end
  end

end
