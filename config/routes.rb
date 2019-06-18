Rails.application.routes.draw do
  resources :pads do
    resources :tasks
  end
  resources :pads
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
