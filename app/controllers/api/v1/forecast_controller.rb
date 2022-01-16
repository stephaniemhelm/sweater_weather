class Api::V1::ForecastController < ApplicationController

  def show
    location = MapquestFacade.get_latitude_and_longitude(params[:location])
    weather = WeatherFacade.get_weather_data(location.latitude, location.longitude)

    render json: ForecastSerializer.new(weather)
  end
end
