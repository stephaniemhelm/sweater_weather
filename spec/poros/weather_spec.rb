require 'rails_helper'

RSpec.describe Weather do

  it 'is an instance of weather' do
    data = weather_data

      @weather = Weather.new(data)

      expect(@weather).to be_a Weather
  end
end
