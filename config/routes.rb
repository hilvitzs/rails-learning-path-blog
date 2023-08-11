Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :blog_posts

  # Created automatically by resources: get "/blog_posts", to: "blog_posts#index", as: :blogs_posts

  # Individually defined routes before refactor
  # get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  # get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  # patch "/blog_posts/:id", to: "blog_posts#update"
  # delete "/blog_posts/:id", to: "blog_posts#destroy"
  # get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  # post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  # blog_post_path(1) -> "/blog_posts/1"
  # blog_post_url(1) -> "http://localhost:3000/blogs_posts/1"


  # Defines the root path route ("/")
  root "blog_posts#index"
end
