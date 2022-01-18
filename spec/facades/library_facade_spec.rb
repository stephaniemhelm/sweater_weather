require 'rails_helper'

RSpec.describe LibraryFacade do
  it 'can get book data for a location' do
    title = 'Denver, CO'
    quantity = 5

    result = LibraryFacade.get_book_data(title, quantity)

  end
end
