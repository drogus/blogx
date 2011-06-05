Blogx::Engine.routes.draw do
  scope :module => "blogx" do
    namespace :admin do
      resources :posts
      root :to => "posts#index"
    end
    match "/" => "posts#index"
    match ":id" => "posts#show"
  end
end
