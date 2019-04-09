Rails.application.routes.draw do
  
   get "/send_mail" => "ticket_mailer#send_mail"
 
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
