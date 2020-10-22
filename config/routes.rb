Rails.application.routes.draw do
  devise_for :users
  
    namespace :api do
      namespace :v1 do
        resources :contacts, defaults: { format: 'json'}
        resources :messages, defaults: { format: 'json'}
      end
    end
    
end
