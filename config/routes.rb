Rails.application.routes.draw do
  post 'contact', to: 'contacts#create', as: 'contact'
  
  devise_for :admins
  get 'admin', to: 'admin#index', as: 'admin'
  get 'admins', to: 'admin#index'
  namespace :admin do
    resources :heros
    resources :abouts
    resources :skills
    resources :resumes
    resources :projects
    resources :contact_infos
    resources :contacts, :only => [:index, :show, :destroy]
  end
  
  root 'welcome#index'
end
