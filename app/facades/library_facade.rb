class LibraryFacade

  def self.get_book_data(title, quantity)
    data = LibraryService.get_book_data(title, quantity)
    weather = WeatherFacade.get_destination_weather(title)

    require "pry"; binding.pry
    Book.new(data, title, quantity, weather)
  end
end
