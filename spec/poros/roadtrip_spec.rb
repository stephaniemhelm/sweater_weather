require 'rails_helper'

RSpec.describe Roadtrip do
  it 'has attributes, happy path' do
    origin = 'Buena Vista, CO'
    destination = 'Denver, CO'

    result = RoadtripFacade.get_roadtrip_data(origin, destination)

    expect(result).to be_a Roadtrip
    expect(result.id).to eq(nil)
    expect(result.start_city).to eq('Buena Vista, CO')
    expect(result.end_city).to eq('Denver, CO')
    expect(result.travel_time).to eq("02:13:46")
    expect(result.weather_at_eta).to have_key :temperature
    expect(result.weather_at_eta[:temperature]).to be_a Numeric
    expect(result.weather_at_eta).to have_key :conditions
    expect(result.weather_at_eta[:conditions]).to be_a String
  end

  it 'has attributes, sad path' do
    origin = 'London'
    destination = 'Denver, CO'

    result = RoadtripFacade.get_roadtrip_data(origin, destination)

    expect(result).to be_a Roadtrip
    expect(result.id).to eq(nil)
    expect(result.start_city).to eq('London')
    expect(result.end_city).to eq('Denver, CO')
    expect(result.travel_time).to eq("Impossible")
    expect(result.weather_at_eta).to eq({})
  end

  it 'has attributes, happy path' do
    origin = 'Seatle, WA'
    destination = 'Mexico City'

    result = RoadtripFacade.get_roadtrip_data(origin, destination)
    
    expect(result).to be_a Roadtrip
    expect(result.id).to eq(nil)
    expect(result.start_city).to eq('Seatle, WA')
    expect(result.end_city).to eq('Mexico City')
    expect(result.travel_time).to eq("48:53:40")
    expect(result.weather_at_eta).to have_key :temperature
    expect(result.weather_at_eta[:temperature]).to be_a Numeric
    expect(result.weather_at_eta).to have_key :conditions
    expect(result.weather_at_eta[:conditions]).to be_a String
  end
end
