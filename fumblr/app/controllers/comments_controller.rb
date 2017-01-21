class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      redirect_to post_path(@post)
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.destroy
      redirect_to posts_path
    else
      render @post
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :post_id, :body)
  end

  def find_comment
  end
end
