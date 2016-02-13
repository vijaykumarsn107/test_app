class BlogsController < ApplicationController

def index
	@blogs = Blog.all
end

def new
@blog = Blog.new
end

def create
	@blog = Blog.new(blog_params)
	if @blog.save
		redirect_to blogs_path
	else

	end
end

def show
	@blog = Blog.find(params[:id])
end

def destroy
	blog = Blog.find(params[:id])
	blog.destroy
	redirect_to blogs_path
end

def edit
@blog = Blog.find(params[:id])
end

def update
	@blog = Blog.find(params[:id])
	if @blog.update_attributes(blog_params)
		redirect_to blogs_path
	else

	end
end

 private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end

end
