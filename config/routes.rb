Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  resources :users do
    member do
      get :confirm_email
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
