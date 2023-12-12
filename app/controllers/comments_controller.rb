class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to "/prototypes/#{comment.comment.id}" 
  end

  private
  def comment_params
    params.require(:comment).permit(:coment).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
