Rails.application.routes.draw do
  root 'employees#index'
  get 'employees/index'

  get 'example' => 'example#index'

  namespace :api do
    resources :employees, defaults: { format: :json }
  end
end