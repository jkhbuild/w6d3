require "byebug"
class UsersController < ApplicationController
    def index
        debugger
        @users = User.all
        render json: @users

    end

    def create
        # debugger
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        user.save!
        render json: user
    end

    def show
        render json: User.find(params[:id])
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to users_url(@user)
        else 
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end

private
    def user_params
        params.require(:user).permit(:username)
    end



end