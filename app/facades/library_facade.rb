class LibraryFacade

  def self.get_book_data(title, quantity)
    data = LibraryService.get_book_data(title, quantity)
    weather = WeatherFacade.get_destination_weather(title)

    books = Books.new(data, title, quantity, weather)
    require "pry"; binding.pry
  end
end
