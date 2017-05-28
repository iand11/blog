Rails.application.routes.draw do
  resources :posts do 
    member do 
      get 'likes' => 'post#likes'
    end 
  end 
  root 'posts#index'
# GET    /posts/:id/likes posts#likes
# GET    /posts          posts#index
# POST   /posts          posts#create
# GET    /posts/new      posts#new
# GET    /posts/:id/edit posts#edit
# GET    /posts/:id      posts#show
# PATCH  /posts/:id      posts#update
# PUT    /posts/:id      posts#update
# DELETE /posts/:id      posts#destroy

  resources :likes
 #POST   /likes           likes#create
 #GET    /likes/new       likes#new
 #GET    /likes/:id/edit  likes#edit
 #GET    /likes/:id       likes#show
 #PATCH  /likes/:id       likes#update
 #PUT    /likes/:id       likes#update
 #DELETE /likes/:id       likes#destroy
end 
