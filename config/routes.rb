Rails.application.routes.draw do

  get 'statistiche/costo_per_coltura'

  get 'statistiche/costo_per_operazione'


  authenticated :user do
root to: 'trattamentos#index', as: :authenticated_root
end
root to: redirect('/users/sign_in')
  resources :prodottos_operaziones
  resources :operaziones_cat_coltures
  devise_for :users
  resources :prezzos
  resources :prodottos
  resources :cat_coltures
  resources :cat_prodottos
  resources :operazione_trattamentos
  resources :prodotto_trattamentos
  resources :trattamentos
  resources :colturas
  resources :caricos
  resources :operaziones
  resources :attrezzos
  resources :statistiche
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
