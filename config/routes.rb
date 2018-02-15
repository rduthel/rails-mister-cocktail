Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/create'

  get 'doses/destroy'

  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create destroy]
  end

  root to: 'cocktails#index'
end
