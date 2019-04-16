Rails.application.routes.draw do

  root to: "dashboard#index"

  resources :favorites

end
