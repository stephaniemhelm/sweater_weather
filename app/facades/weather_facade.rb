class WeatherFacade

  def self.get_current_weather(latitude, longitude)
    data = WeatherService.get_weather_data(latitude, longitude)
    CurrentWeather.new(data)
  end

  def self.get_hourly_weather(latitude, longitude)
    data = WeatherService.get_weather_data(latitude, longitude)
    data[:hourly].first(8).map do |hour|
      HourlyWeather.new(hour)
    end
  end
end
