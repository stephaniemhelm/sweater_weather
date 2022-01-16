require 'rails_helper'

RSpec.describe 'Get /api/v1/forecast' do
  it 'can get forecast weather data for a location' do

    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful

    forecast_response = JSON.parse(response.body, symbolize_names: true)

    expect(forecast_response).to be_a Hash
    expect(forecast_response[:data]).to be_a Hash
    expect(forecast_response[:data][:type]).to eq('forecast')
    expect(forecast_response[:data]).to have_key :attributes
    expect(forecast_response[:data][:attributes]).to have_key :current_weather 
    expect(forecast_response[:data][:attributes]).to have_key :daily_weather
    expect(forecast_response[:data][:attributes]).to have_key :hourly_weather
  end
end
