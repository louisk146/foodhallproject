Rails.application.routes.draw do
  devise_for :admins
  get 'welcome/index'

  resources :events do
  	resources :eventcomments
end

  resources :foodfreecycles do
  	resources :foodfreecyclecomments
end
  root 'welcome#index'
end
