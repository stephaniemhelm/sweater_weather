require 'rails_helper'

RSpec.describe MapquestFacade do
  it 'can get latitude and longitude for a location' do
    location = 'Buena Vista, CO'
    result = MapquestFacade.get_latitude_and_longitude(location)

    expect(result.latitude).to eq(38.841772)
    expect(result.longitude).to eq(-106.132562)
  end
end
