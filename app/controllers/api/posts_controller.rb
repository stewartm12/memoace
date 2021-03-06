module Api
  class PostsController < ApplicationController
    def index
      posts = Post.all
      render json: posts
    end

    def show
      post = Post.find_by(id: params[:id])
      render json: post
    end

    def create
      post = Post.new(post_params)

      if post.save
        render json: post
      else
        render json: {error: post.errors.messages}, status: 422
      end
    end

    def destroy
      post = Post.find_by(id: params[:id])

      if post.destroy
        head :no_content
      else
        render json: {error: post.errors.messages}, status: 422
      end
    end

    private
    def post_params
      params.require(:post).permit(:description, :author)
    end
  end
end