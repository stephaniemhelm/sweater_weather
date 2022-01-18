class Api::V1::RoadtripController < ApplicationController

  def create
    origin = params[:origin]
    destination = params[:destination]
    roadtrip = RoadtripFacade.get_roadtrip_data(origin, destination)

    render json: RoadtripSerializer.new(roadtrip)
  end

  private
    def roadtrip_params
      params.permit(:origin, :destination, :api_key)
    end
end
