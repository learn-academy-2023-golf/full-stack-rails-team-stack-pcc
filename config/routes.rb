Rails.application.routes.draw do
# HTTP verb, URL, hashrocket, controller, method
get '/post' => 'blog#index'

end
