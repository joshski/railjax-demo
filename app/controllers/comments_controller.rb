class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    Comment.create! comment_params
    redirect_to action: :index
  end

  private

  def comment_params
    params.require(:comment).permit!
  end
end
