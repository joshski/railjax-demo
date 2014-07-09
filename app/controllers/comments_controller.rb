class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    comment = Comment.create! comment_params

    respond_to do |format|
      format.html { redirect_to action: :index  }
      format.json { render json: comment }
    end
  end

  private

  def comment_params
    params.require(:comment).permit!
  end
end
