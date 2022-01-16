require 'rails_helper'

RSpec.describe ImageService do
  it 'can get image data based on location' do
    location = 'Buena Vista, CO'

    result = ImageService.get_image(location)

    first_photo = result[:results].first
  
    expect(first_photo).to be_a Hash
    expect(first_photo).to have_key :description
    expect(first_photo).to have_key :urls
    expect(first_photo[:urls]).to be_a Hash
    expect(first_photo[:urls]).to have_key :raw
    expect(first_photo).to have_key :links
    expect(first_photo[:links]).to have_key :self
    expect(first_photo).to have_key :user
    expect(first_photo[:user]).to be_a Hash
    expect(first_photo[:user]).to have_key :name
  end
end
