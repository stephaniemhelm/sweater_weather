require 'rails_helper'

RSpec.describe LibraryService do
  it 'can get book data based on title' do
    title = 'Denver, CO'
    quantity = 5

    result = LibraryService.get_book_data(title, quantity)
  
    expect(result).to be_a Hash
    expect(result).to have_key :numFound
    expect(result[:numFound]).to be_an Integer
    expect(result).to have_key :docs
    expect(result[:docs]).to be_a Array
    expect(result[:docs].second).to have_key :isbn
    expect(result[:docs].first).to have_key :title
    expect(result[:docs].first).to have_key :publisher
 end
end
