Rails.application.routes.draw do
get '/blogposts' => 'blog#index', as: 'blogposts'
post '/blogposts' => 'blog#create'
get '/blogposts/new' => 'blog#new', as: 'new_blogpost'
get '/blogposts/:id' => 'blog#show', as: 'blogpost'
end

