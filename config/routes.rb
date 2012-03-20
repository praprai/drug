Drug::Application.routes.draw do
  resources :drugcodes
  root :to => 'drugcodes#index'
end
