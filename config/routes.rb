Rails.application.routes.draw do

  get '/welcome' => 'pages#welcome'
  get '/' => 'pages#welcome'
  get '/about' => 'pages#about'


end
