class WeatherFacade

  def self.get_current_weather(latitude, longitude)
    data = WeatherService.get_current_weather(latitude, longitude)
    CurrentWeather.new(data)
  end
end
