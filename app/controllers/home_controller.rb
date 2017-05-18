class HomeController < ApplicationController
  def index
  end
  
  def index2
  end
  
  def write
    @new_post=Post.new
    @new_post.title = params[:title]
    @new_post.content = params[:content]
    @new_post.save
    
    redirect_to "/list"
  end
  
  def list
    @all_post = Post.all
  end
  
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    
    redirect_to "/list"
  end
  
  def update
    @one_post = Post.find(params[:post_id])
    @one_post.content = params[:content]
    @one_post.title = params[:title]
    @one_post.save
    
    redirect_to "/list"
  end
  
  def update_view
    @one_post = Post.find(params[:post_id])
  end
  
  def reply_write
    new_reply = Reply.new
    new_reply.content2 = params[:content2]
    new_reply.post_id = params[:id_of_post]
    new_reply.save
    
    redirect_to "/list"
  end
  
  def reply_update
    @one_reply = Reply.find(params[:id_of_post])
    @one_reply.content2 = params[:content2]
    @one_reply.save
    
    redirect_to "/list"
  end
  
  def reply_destroy
    @one_reply = Reply.find(params[:id_of_post])
    @one_reply.destroy
    
    redirect_to "/list"
  end
  
  def reply_updateview
    @one_reply = Reply.find(params[:id_of_post])
  end
end
