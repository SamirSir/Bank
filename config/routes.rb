Rails.application.routes.draw do

	resources :loans

	resources :deposits

  	devise_for :users

  	get 'accounts', to: "home#accounts" , as: :accounts 

  	get 'accounts/:id', to: "home#show", as: :account
  	
  	root 'home#index'

end
