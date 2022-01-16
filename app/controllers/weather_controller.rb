class WeatherController < ApplicationController

  def show
    location = MapquestFacade.get_latitude_and_longitude(params[:location])
    current = WeatherFacade.get_current_weather(location.latitude, location.longitude)
  end
end
