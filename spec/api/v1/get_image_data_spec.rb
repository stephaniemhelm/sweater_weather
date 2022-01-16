require 'rails_helper'

RSpec.describe 'Get /api/v1/image' do
  it 'can get image data for a location' do
    get '/api/v1/image?location=denver,co'

    expect(response).to be_successful

    image_response = JSON.parse(response.body, symbolize_names: true)

    expect(image_response).to be_a Hash
    expect(image_response).to have_key :data
    expect(image_response[:data]).to have_key :type
    expect(image_response[:data][:type]).to eq("image")
    expect(image_response[:data][:attributes]).to have_key :location
    expect(image_response[:data][:attributes]).to have_key :image_url
    expect(image_response[:data][:attributes]).to have_key :source
    expect(image_response[:data][:attributes]).to have_key :description
    expect(image_response[:data][:attributes]).to have_key :artist_name
  end
end
