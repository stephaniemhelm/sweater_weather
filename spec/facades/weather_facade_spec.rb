require 'rails_helper'

RSpec.describe WeatherFacade do
  it 'can get weather for a location' do
    latitude = 38.841772
    longitude = -106.132562

    result = WeatherFacade.get_weather_data(latitude, longitude)

    expect(result).to be_a Weather
  end

  it 'has weather attributes' do
    data = weather_data
      @weather = Weather.new(data)

      expect(@weather).to be_a Weather
  end

  it 'can get weather for a location destination' do
    destination = 'Denver, CO'

    data = WeatherFacade.get_destination_weather(destination)

  end
end
