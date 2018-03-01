Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/help'

  resources :users

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  #root 'welcome#index'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
