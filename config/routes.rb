Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'home/about' => 'homes#about'
  get "home/training_info" => "homes#training_info"
  get "home/food_info" => "homes#food_info"
  resources :trainings do
    member do
      get 'finish'
    end
  end
  
  resources :foods do
    member do
      get 'finish'
    end
  end
  
  resources :users,only:[:index,:show,:edit,:update] do
    member do
      get 'quit'
      patch 'out'
    end
  end
  
end
