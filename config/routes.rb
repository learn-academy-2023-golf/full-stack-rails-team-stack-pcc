Rails.application.routes.draw do
# HTTP verb, URL, hashrocket, controller, method
get '/posts' => 'blog#index', as: 'posts'
get '/post/:id' => 'blog#show', as: 'post'
end

