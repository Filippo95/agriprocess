Rails.application.routes.draw do
  get 'statistiche/costo_per_cat_coltura'

  get 'statistiche/costo_per_coltura'

  get 'statistiche/costo_per_operazione'

  get 'statistiche/costo_carburante_per_cat_coltura'

  get 'statistiche/costo_carburante_per_coltura'

  get 'statistiche/costo_carburante_per_operazione'

  get 'statistiche/costo_carburante_per_attrezzo'

  authenticated :user do
root to: 'trattamentos#index', as: :authenticated_root
end
root to: redirect('/users/sign_in')
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
