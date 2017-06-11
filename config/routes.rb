Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'groups#index'

  resources :groups
  resources :users do
    collection do
      post ':id/follow' => 'users#follow', as: :follow
      post ':id/unfollow' => 'users#unfollow', as: :unfollow
    end
  end


end
