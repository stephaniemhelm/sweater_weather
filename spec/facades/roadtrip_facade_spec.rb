require 'rails_helper'

RSpec.describe RoadtripFacade do
  it 'can get roadtrip data happy path' do
      origin = 'Buena Vista, CO'
      destination = 'Denver, CO'

      result = RoadtripFacade.get_roadtrip_data(origin, destination)

      expect(result).to be_a Roadtrip
      expect(result.id).to eq(nil)
      expect(result.start_city).to eq('Buena Vista, CO')
      expect(result.end_city).to eq('Denver, CO')
      expect(result.travel_time).to eq("02:13:46")
      expect(result.weather_at_eta).to have_key :temperature
      expect(result.weather_at_eta).to have_key :conditions
  end

  it 'can get roadtrip data sad path' do
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
end
