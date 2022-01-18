require 'rails_helper'

RSpec.describe RoadtripFacade do
  it 'can get roadtrip data happy path' do
      origin = 'Buena Vista, CO'
      destination = 'Denver, CO'

      result = RoadtripFacade.get_roadtrip_data(origin, destination)
      #require "pry"; binding.pry

  end

  it 'can get roadtrip data sad path' do
      origin = 'London'
      destination = 'Denver, CO'

      result = RoadtripFacade.get_roadtrip_data(origin, destination)
      #require "pry"; binding.pry

  end



end
