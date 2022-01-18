require 'rails_helper'

RSpec.describe Books do
  it 'has book attributes' do
    title = 'Denver, CO'
    quantity = 5

    result = LibraryFacade.get_book_data(title, quantity)

    expect(result).to be_a Books
    expect(result.id).to eq(nil)
    expect(result.forecast).to be_a Hash
    expect(result.forecast).to have_key :summary
    expect(result.forecast).to have_key :temperature
    expect(result.total_books_found).to eq(35)
    expect(result.destination).to eq("Denver, CO")
    expect(result.books.count).to eq(5)
    expect(result.books.first[:title]).to eq("Relocation of Western Executive Seminar Center from Denver to Grand Junction, CO")
    expect(result.books.first[:publisher]).to eq(["U.S. G.P.O."])
    expect(result.books.second[:isbn]).to eq(["9780762507849", "0762507845"])
  end
end
