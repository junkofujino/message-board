Rails.application.routes.draw do

  resources :blogs do
    collection do
      post :confirm
    end
  end
  
  resources :tweets do
    collection do
      post :confirm
    end
  end  
  
  root 'top#index'
  
end