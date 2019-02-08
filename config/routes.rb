Rails.application.routes.draw do
  resources :reports
  resources :comments
  resources :events
  resources :users
  get 'retorna_eventos(/:nome)', to: 'events#index#nome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
