require 'rails_helper'

RSpec.describe LibraryFacade do
  it 'can get book data for a location' do
    title = 'Denver, CO'
    quantity = 5

    result = LibraryFacade.get_book_data(title, quantity)
<<<<<<< HEAD

=======
    
>>>>>>> 4f8918534c4eb6e5dbd6cdeaacddf7a8db3c8562
    expect(result).to be_a Books
    expect(result.total_books_found).to eq(35)
    expect(result.destination).to eq("Denver, CO")
    expect(result.books.count).to eq(5)
    expect(result.books.first[:title]).to eq("Relocation of Western Executive Seminar Center from Denver to Grand Junction, CO")
    expect(result.books.first[:publisher]).to eq(["U.S. G.P.O."])
    expect(result.books.second[:isbn]).to eq(["9780762507849", "0762507845"])
  end
end
