Rails.application.routes.draw do
  devise_for :users

  resources :pages, only:[] do
    collection do
      get 'search', to: 'pages#search'
      get 'match', to: 'pages#match'
    end
    member do
      get 'show', to: 'pages#show'
    end
  end


  resources :interactions, only: :create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
