Rails.application.routes.draw do
  get '/events/archive' => 'events#archive' # or match for older Rails versions
resources :events

  devise_for :users
  get 'static_pages/about'

  get 'static_pages/contact'

  devise_for :admins
  get 'welcome/index'

  resources :events do
  	resources :eventcomments
     get :archive
end

  resources :foodfreecycles do
  	resources :foodfreecyclecomments
end

	resources :archive

  root 'welcome#index'
end
