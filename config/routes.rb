Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

   get 'pages/biografia',to: 'pages#biografia'


   get 'pages/carrera', to:'pages#carrera'
end
