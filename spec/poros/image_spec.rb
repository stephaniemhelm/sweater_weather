require 'rails_helper'

RSpec.describe Image do
  it 'has image attributes' do
    location = 'Buena Vista, CO'

    data = image_data

    image = Image.new(data, location)

    expect(image.id).to eq(nil)
    expect(image.location).to eq('Buena Vista, CO')
    expect(image.image_url).to eq("https://images.unsplash.com/photo-1600656862529-3c4011c36a13?ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3&ixlib=rb-1.2.1")
    expect(image.description).to eq("snow covered mountain under blue sky during daytime")
  end
end
