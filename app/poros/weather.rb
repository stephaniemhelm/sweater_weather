class Weather

  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(data)
    @id = nil
    @current_weather = CurrentWeather.new(data)
    @daily_weather = data[:daily].first(5).map do |day|
      DailyWeather.new(day)
    end
    @hourly_weather = data[:hourly].first(8).map do |hour|
      HourlyWeather.new(hour)
    end
  end
end
