class WeatherFacade

  def self.get_weather_data(latitude, longitude)
    data = WeatherService.get_weather_data(latitude, longitude)
    Weather.new(data)
  end
end
