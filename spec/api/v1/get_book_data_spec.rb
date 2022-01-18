require 'rails_helper'

RSpec.describe 'Get /api/v1/book-search' do

  it 'can get book data for a title' do

    get '/api/v1/book-search?title=Denver, CO&quantity=5'

    expect(response).to be_successful

    books_response = JSON.parse(response.body, symbolize_names: true)

    expect(books_response).to be_a Hash
    expect(books_response).to have_key :data
    expect(books_response[:data]).to be_a Hash
    expect(books_response[:data]).to have_key :id
    expect(books_response[:data]).to have_key :type
    expect(books_response[:data][:type]).to eq("books")
    expect(books_response[:data]).to have_key :attributes
    expect(books_response[:data][:attributes]).to have_key :destination
    expect(books_response[:data][:attributes]).to have_key :forecast
    expect(books_response[:data][:attributes]).to have_key :total_books_found
    expect(books_response[:data][:attributes]).to have_key :books
    expect(books_response[:data][:attributes][:books].first).to have_key :isbn
    expect(books_response[:data][:attributes][:books].first).to have_key :title
    expect(books_response[:data][:attributes][:books].first).to have_key :publisher
  end
end
