Rails.application.routes.draw do

  resources :tweets do
    collection do
      post :confirm
    end
  end

  resources :sessions, only: [:index, :new, :create, :destroy]
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
