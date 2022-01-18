require 'rails_helper'

RSpec.describe CurrentWeather do

  it 'has current weather attributes' do
    data = weather_data
    
    today = CurrentWeather.new(data)

    expect(today.temperature).to eq(29.23)
    expect(today.feels_like).to eq(19.53)
    expect(today.humidity).to eq(18)
    expect(today.uvi).to eq(1.87)
    expect(today.visibility).to eq(10000)
    expect(today.conditions).to eq("Clear")
    expect(today.icon).to eq("01d")
  end
end
