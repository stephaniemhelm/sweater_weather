class WeatherService < BaseService

  def self.get_current_weather(latitude, longitude)
    response = conn('https://api.openweathermap.org').get('/data/2.5/onecall') do |f|
      f.params['appid'] = ENV['open_weather_api_key']
      f.params['lat'] = "#{latitude}"
      f.params['lon'] = "#{longitude}"
    end
    format_json(response)
  end
end
