class TopicsController < ApplicationController
  
  def new
     
  end
 
  def create
  @topic = Topic.find(params[:topic_id])
  @post = @topic.posts.find(params[:post_id])
  @comments = @post.comments

  @comment = current_user.comments.build(params[:comment])
  @comment.post = @post
  @new_comment = Comment.new
  end
 
  
end

def destroy
     @topic = Topic.find(params[:topic_id])
     @post = @topic.posts.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
 
     authorize @comment
     if @comment.destroy
       flash[:notice] = "Comment was removed."
       redirect_to [@topic, @post]
     else
       flash[:error] = "Comment couldn't be deleted. Try again."
       redirect_to [@topic, @post]
     end
   end
