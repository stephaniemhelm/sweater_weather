class Api::V1::BooksController < ApplicationController

  def show
    title = params[:location]
    quantity = params[:quantity]

    books = LibraryFacade.get_book_data(title, quantity)

    render json: BooksSerializer.new(books)
  end
end
