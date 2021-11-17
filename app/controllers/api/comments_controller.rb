module Api
  class CommentsController < ApplicationController
    def create
      comment = Comment.new(comment_params)

      if comment.save
        render json: comment
      else
        render json: {error: comment.errors.messages}, status: 422
      end
    end

    def destroy
      comment = Comment.find(params[:id])

      if comment.save
        head :no_content
      else
        render json: {error: comment.errors.messages}, status: 422
      end
    end

    private
    def comment_params
      params.require(:comments).permit(:description, :author, :post_id)
    end
  end
end