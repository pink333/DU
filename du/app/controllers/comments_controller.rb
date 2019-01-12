class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:user_id, :post_id, :body ))
    unless @comment.save
      flash[:danger] = "文字を入力してください"
    end
    
     redirect_to post_path(@post)
     
  end


  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
     
    @comment.destroy
    flash[:success] = "削除しました"
    redirect_to post_path(@post)
  end 
end
