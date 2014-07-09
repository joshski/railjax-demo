class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    comment = Comment.create! comment_params

    if request.xhr?
      render comment
    else
      redirect_to action: :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit!
  end
end
