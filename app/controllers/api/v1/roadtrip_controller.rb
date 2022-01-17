class Api::V1::RoadtripController < ApplicationController

  def show
    start_city = params[:origin]
    end_city = params[:destination]



    render json: RoadtripSerializer.new()
  end

  private
    def roadtrip_params
      params.permit(:origin, :destination, :api_key)
    end

end
