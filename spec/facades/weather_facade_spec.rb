require 'rails_helper'

RSpec.describe WeatherFacade do
  it 'can get current weather for a location' do
    latitude = 38.841772
    longitude = -106.132562

    result = WeatherFacade.get_current_weather(latitude, longitude)
    


  end
end
