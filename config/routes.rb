Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/contact'

  devise_for :admins
  get 'welcome/index'

  resources :events do
  	resources :eventcomments
end

  resources :foodfreecycles do
  	resources :foodfreecyclecomments
end

	resources :archive

  root 'welcome#index'
end
