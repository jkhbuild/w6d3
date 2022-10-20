require "byebug"
class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users

    end

    def create
        # debugger
        user = User.new(params.require(:user).permit(:username))
        # replace the `user_attributes_here` with the actual attribute keys
        user.save!
        render json: user
    end

    def show
        render json: params
    end

    def destroy
        user = User.find_by(params[:id])
        user.destroy
        redirect_to users_url
    end

end