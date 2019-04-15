Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
        resources :items
        resources :orders
        resources :pizza_types

        get '/menu', to: 'pizza_types#index'
        get "*path", to: redirect('/api/v1/menu')
        # match '*path', via: :all, to: redirect('/api/v1/menu')
        # get 'orders/total_price', to: 'orders#total_price', :as => 'jin'
    end
  end

end
