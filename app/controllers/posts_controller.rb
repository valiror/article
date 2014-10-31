class PostsController < ApplicationController
   before_filter :authenticate_user!
   
   def index   
  @posts = Post.paginate(:page => params[:page], :per_page => 16)
   end
   def new
  @post =Post.new
   end
   def create 
   @post = Post.new(params[:post])
   if @post.save
   redirect_to posts_path, :notice => "your post created sucessfully. "
   else 
   render "new"
   end
  end
  def update
  @post = Post.find(params[:id])
  if @post.update_attributes(params[:post])
  redirect_to posts_path, :notice => "your post updated sucessfully."
  else
  render "edit"
  end
  end
   def show
   @post = Post.find(params[:id])
   end
   def edit
   @post = Post.find(params[:id])
   end
   def destroy
    @post = Post.find(params[:id])
   @post.destroy
   redirect_to posts_path, :notice => "your post deleted sucssfully."
    end
   
end
