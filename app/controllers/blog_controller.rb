class BlogController < ApplicationController
    def index 
        @posts = Blog.all
    end

    
end

