Rails.application.routes.draw do
  resources :itemtaxes
  resources :items
  root 'welcome#index'
  post '/finalpage' , to: 'items#finalamount' 
  get '/finalpage' , to: 'items#finalamount' 

  get '/totalpage' , to: 'items#totalamount' 

  devise_for :users
  as :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
