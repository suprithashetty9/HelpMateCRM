Rails.application.routes.draw do
  
  get 'customers_imports/new'
  get 'customers_imports/create'
   get "/send_mail" => "ticket_mailer#send_mail"
   
 
  get "/assign" => "slacalculator#calculate"
   post "/assign" => "slacalculator#calculate"
   
   get "/calculate_sla" => "slacalculator#slacalculate"
   post "/calculate_sla" => "slacalculator#slacalculate"
    
  resources :customers_imports, only: [:new, :create]
  resources :customers do
  
     resources :tickets
     
    end
 
  get 'welcome/homepage'
  devise_for :users
  root 'initial#loginpage'
# resources :homepage, controller: 'welcome'
  resources :ticket_transcations
  resources :employees
  resources :roles
  resources :sources
  resources :caller_types
  resources :ages
    resources :ticket_types
       resources :products
  resources :ticket_statuses
  # resources :ticket_types
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
