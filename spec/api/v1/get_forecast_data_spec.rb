require 'rails_helper'

RSpec.describe 'Get /api/v1/forecast' do
  it 'can get forecast weather data for a location' do

    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful


  end
end
