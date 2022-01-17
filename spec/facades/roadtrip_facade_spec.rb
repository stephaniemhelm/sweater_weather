require 'rails_helper'

RSpec.describe RoadtripFacade do
  it 'can get roadtrip data' do
      origin = 'London'
      destination = 'Denver, CO'

      result = RoadtripFacade.get_roadtrip_data(origin, destination)
      #require "pry"; binding.pry

  end





end
