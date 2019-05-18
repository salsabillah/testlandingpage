Rails.application.routes.draw do
  resources :landingpages

  root 'landingpages#index'

end

