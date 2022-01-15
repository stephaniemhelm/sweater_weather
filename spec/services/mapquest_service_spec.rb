require 'rails_helper'

RSpec.describe MapquestService do
  it 'can get mapquest data' do
    result = MapquestService.get_latitude_and_longitude('Buena Vista, CO')
  
    expect(result).to be_a Hash
    expect(result).to have_key :results
    expect(result[:results]).to be_a Array
    expect(result[:results][0]).to be_a Hash
    expect(result[:results][0]).to have_key :locations
    expect(result[:results][0][:locations][0]).to be_a Hash
    expect(result[:results][0][:locations][0]).to have_key :latLng
    expect(result[:results][0][:locations][0][:latLng]).to be_a Hash
    expect(result[:results][0][:locations][0][:latLng]).to have_key :lat
    expect(result[:results][0][:locations][0][:latLng]).to have_key :lng
  end

end
