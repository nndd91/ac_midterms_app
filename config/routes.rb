Rails.application.routes.draw do

  resources :doctors do
    collection do
      get 'list_male'
      get 'list_female'
    end
  end

  root 'doctors#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
