class Api::UsersController < ApplicationController
    def create
        @user = User.new()

        if @user.save
            render json: @user, include: :walks
        else
            render json: @user.errors.full_messages, status: 422
        end 
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :walks
    end
end
