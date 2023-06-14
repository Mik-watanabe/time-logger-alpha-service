class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: PostSerializer.new(posts).serializable_hash.to_json
    end

    def show
        post = Post.find(params[:id])
        render json: PostSerializer.new(post).serializable_hash.to_json
    end
end
