Rails.application.routes.draw do

  root 'players#index'

  post '/throw' => 'players#throw'

end
