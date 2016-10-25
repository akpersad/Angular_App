Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'employees#index'

  get 'example' => 'example#index'

  namespace :api do
    resources :employees, defaults: { format: :json }
  end
end