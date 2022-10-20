require "byebug"

class CommentsController < ApplicationController
    def index
        # debugger
        if !comments[:user_id].nil?
            user = User.find_by(params[:user_id])
            user.comments
        elsif !comments[:artwork_id].nil?
            artwork = Artwork.find_by()

        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.create(comment_params)
        comment.save!
        render json: comment
    end

    def destroy
        comment = Comment.find_by(params[:id])
        comment.destroy
        render json: comment
    end

    private
    def comment_params
        params.require(:comment).permit(:body, :artwork_id, :user_id)
    end
end
