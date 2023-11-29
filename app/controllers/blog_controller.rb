class BlogController < ApplicationController
    def index 
        @posts = Blog.all
    end

    def show
      @post = Blog.find(params[:id])  
    end
    
    def new
      @post = Blog.new
    end
end

