class BlogController < ApplicationController
    def index 
      @blogposts = Blog.all
    end

    def show
      @blogpost = Blog.find(params[:id])  
    end
    
    def new
      @blogpost = Blog.new
    end

    def create
      @blogpost = Blog.create(blog_params)
      # if @post.valid?
      #   redirect_to posts_path
      # end
    end

    private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end

