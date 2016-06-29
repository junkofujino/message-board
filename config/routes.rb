Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: "users/registrations"
}
  
  resources :tweets do
    collection do
      post :confirm
    end
  end  
  
  root 'top#index'
  
end