Rails.application.routes.draw do
  get 'employees/index'

  root 'employees#index'

  get 'example' => 'example#index'

  namespace :api do
    resources :employees, defaults: { format: :json }
  end
end