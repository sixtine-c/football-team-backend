Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'list' => 'list#index'
  # get 'team' => 'team#index'
  namespace :api do
      resources :teams
  end

end
