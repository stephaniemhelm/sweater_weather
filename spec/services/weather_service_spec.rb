require 'rails_helper'

RSpec.describe WeatherService do
  it 'can get current weather data' do
    latitude = 38.841772
    longitude = -106.132562

    result = WeatherService.get_weather_data(latitude, longitude)

    expect(result).to be_a Hash
    expect(result).to have_key :current
    expect(result[:current]).to be_a Hash
    expect(result[:current]).to have_key :dt
    expect(result[:current][:dt]).to be_a Integer
    expect(result[:current]).to have_key :sunrise
    expect(result[:current][:sunrise]).to be_a Integer
    expect(result[:current]).to have_key :sunset
    expect(result[:current][:sunset]).to be_a Integer
    expect(result[:current]).to have_key :temp
    expect(result[:current][:temp]).to be_a Numeric
    expect(result[:current]).to have_key :feels_like
    expect(result[:current][:feels_like]).to be_a Numeric
    expect(result[:current]).to have_key :humidity
    expect(result[:current][:humidity]).to be_a Integer
    expect(result[:current]).to have_key :uvi
    expect(result[:current]).to have_key :visibility
    expect(result[:current][:visibility]).to be_a Integer
    expect(result[:current]).to have_key :weather
    expect(result[:current][:weather]).to be_a Array
    expect(result[:current][:weather].first).to be_a Hash
    expect(result[:current][:weather].first).to have_key :main
    expect(result[:current][:weather].first[:main]).to be_a String
    expect(result[:current][:weather].first).to have_key :icon
    expect(result[:current][:weather].first[:icon]).to be_a String
    expect(result[:hourly]).to be_a Array
    expect(result[:daily]).to be_a Array
  end
end
