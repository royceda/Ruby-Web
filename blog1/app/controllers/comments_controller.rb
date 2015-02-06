class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comments])
    @comment.save

    redirect_to @posts
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    
    redirect_to @post
  end
end
