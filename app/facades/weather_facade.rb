class WeatherFacade

  def self.get_weather_data(latitude, longitude)
    data = WeatherService.get_weather_data(latitude, longitude)
    Weather.new(data)
  end

  def self.get_destination_weather(destination)
    end_city_location = MapquestFacade.get_latitude_and_longitude(destination)

    WeatherService.get_weather_data(end_city_location.latitude, end_city_location.longitude)
  end
end
