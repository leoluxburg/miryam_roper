Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages/biografia',to: 'pages#biografia'
  get 'pages/carrera', to:'pages#carrera'
  get 'pages/videos', to:'pages#videos'
  get 'pages/contact', to:'pages#contact'
end
