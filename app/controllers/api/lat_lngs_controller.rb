class Api::LatLngsController < ApplicationController
    def create 
        @latLng = LatLng.new(lat_lng_params)
        if @latLng.save 
            render json: @latLng
        else 
            render json: @latLng.errors.full_messages, status: 422
        end 
    end 

    private 
    def lat_lng_params
        params.require(:lat_lng).permit(
            :latitude,
            :longitude,
            :walk_id,
            :num,
        )
    end
end
