Rails.application.routes.draw do
# HTTP verb, URL, hashrocket, controller, method
get '/posts' => 'blog#index', as: 'posts'
get '/posts/new' => 'blog#new', as: 'new_post'
get '/post/:id' => 'blog#show', as: 'post'
end

