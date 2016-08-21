Rails.application.routes.draw do
  resources :employees
  root to: 'visitors#index'
end
