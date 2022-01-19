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
    weather = Weather.new(data)

    expect(weather).to be_a Weather
    expect(weather.current_weather.conditions).to eq("Clear")
    expect(weather.current_weather.feels_like).to eq(19.53)
    expect(weather.current_weather.humidity).to eq(18)
    expect(weather.current_weather.icon).to eq("01d")
    expect(weather.current_weather.temperature).to eq(29.23)
    expect(weather.current_weather.uvi).to eq(1.87)
  end

  it 'can get weather for a location destination' do
    destination = 'Denver, CO'

    data = WeatherFacade.get_destination_weather(destination)

    expect(data).to be_a Hash
    expect(data).to have_key :current
    expect(data[:current]).to be_a Hash
    expect(data[:current]).to have_key :temp
    expect(data[:current][:temp]).to be_a Numeric
    expect(data[:current]).to have_key :feels_like
    expect(data[:current][:feels_like]).to be_a Numeric
    expect(data[:current]).to have_key :humidity
    expect(data[:current][:humidity]).to be_a Integer
    expect(data[:current]).to have_key :uvi
    expect(data[:current]).to have_key :weather
  end
end
