Rails.application.routes.draw do
  resources :prtds
  resources :patches
  resources :prmers
  resources :prms do
    resources :prmers
  end
  resources :projects do
    resources :prms
    resources :prtds
    resources :patches
  
  end
  devise_for :users
  root "projects#index"
end
