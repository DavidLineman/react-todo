Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root 'pages#home'
  end 

  authenticated :user do 
    root 'pages#my_todo_items', as: :authenticated_root
  end 
  
end
