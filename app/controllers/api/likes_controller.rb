module Api
  class LikesController < ApplicationController
    def create
      like = Like.new(like_params)
      if like.save
        render json: like
      else
        render json: like.errors.messages, status: 422
      end
    end

    def destroy
      like = Like.find_by(user_id: params[:user_id], liked_type_type: params[:liked_type_type])
      like.destroy
    end

    private
    def like_params
      params.require(:likes).permit(:user_id, :liked_type_id, :liked_type_type)
    end
  end
end