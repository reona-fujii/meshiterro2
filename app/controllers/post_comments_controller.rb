class PostCommentsController < ApplicationController
  
  
  def create
    @post_comment = PostComment.new(post_image_params)
    @post_comment.user_id = current_user.id
    @post_image = PostImage.find(params[:post_image_id])
    @post_comment.post_image_id = @post_image.id
    @post_comment.save
    redirect_to post_image_path(params[:post_image_id])
  end
  
  def destroy
    @post_comment = PostComment.find(post_image.post_comment, post_comment)
    @post_comment.destroy
    redirect_to post_image_path(params[:post_image_id])
  end
  
  private
  def post_image_params
    params.require(:post_comment).permit(:comment)
  end
  
  
end
