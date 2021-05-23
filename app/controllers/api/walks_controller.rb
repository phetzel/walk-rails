class Api::WalksController < ApplicationController
    def index
        @walks = Walk.where(user_id: params[:user_id])
        if params[:date] == 'month'
            @walks = @walks
                .where('created_at >= ?', 31.day.ago.to_datetime)
        elsif params[:date] == 'week'
            @walks = @walks
                .where('created_at >= ?', 7.day.ago.to_datetime)
        end

        if params[:activity] 
            @walks = @walks.where(activity: activity)
        end

        render json: @walks
    end 

    def show 
        @walk = Walk.find(params[:id])
        render json: @walk, include: :lat_lngs
    end 

    def create 
        @walk = Walk.new(walk_params)
        if @walk.save 
            render json: @walk
        else 
            render json: @walk.errors.full_messages, status: 422
        end 
    end 

    def destroy 
        walk = Walk.find(params[:id])
        walk.destroy
    end 

    private 
    def walk_params
        params.require(:walk).permit(
            :user_id,
            :distance,
            :time,
            :activity,
            :date
        )
    end
end
