Rails.application.routes.draw do
  get 'portfolio/index'

  get 'home/index'
  root 'home#index'
  # get 'contact', to: 'messages#new', as: 'contact'
  # post 'contact', to: 'messages#create'
  resources :about
  resources :contact do
    resources :messages, controller: :contact
  end
  resources :portfolio
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
