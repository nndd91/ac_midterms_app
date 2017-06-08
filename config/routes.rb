Rails.application.routes.draw do
  get 'doctors/new'

  get 'doctors/show'

  get 'doctors/index'

  get 'doctors/edit'

  get 'doctors/update'

  get 'doctors/create'

  get 'doctors/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
