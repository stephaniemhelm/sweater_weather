require 'rails_helper'

RSpec.describe Credit do
  it 'has image attributes' do
    location = 'Buena Vista, CO'

    data = image_data

      credit = Credit.new(data)

      expect(credit.source).to eq("https://api.unsplash.com/users/haydenhatchphoto/photos")
      expect(credit.artist_name).to eq("Hayden Hatch")
  end
end
