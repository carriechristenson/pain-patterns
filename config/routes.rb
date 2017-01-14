Rails.application.routes.draw do
  mount_devise_token_auth_for 'Patient', at: 'auth'

  devise_for :patients
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
