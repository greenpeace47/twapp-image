Rails.application.routes.draw do

  resources :tweets do
    collection do
      post :confirm
    end
  end

  resources :sessions, only: [:index, :new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
