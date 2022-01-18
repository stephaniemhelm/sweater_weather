class Books

  attr_reader :id,
              :destination,
              :forecast,
              :total_books_found,
              :books

  def initialize(data, title, quantity, weather)
    @id = nil
    @destination = "#{title}"
    @forecast = books_forcast(weather)
    @total_books_found = data[:numFound]
    @books = book_information(data)
  end

  def books_forcast(weather)
    { summary: weather[:current][:weather].first[:main], temperature: kelvin_to_farenheit(weather[:current][:temp])}
  end

  def kelvin_to_farenheit(temperature)
    ((temperature - 273.15) * 1.8 + 32).round(2)
  end

  def book_information(data)
    data[:docs].first(5).map do |book|
      {
        isbn: book[:isbn],
        title: book[:title],
        publisher: book[:publisher]
      }
    end
  end
end
