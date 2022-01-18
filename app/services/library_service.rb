class LibraryService < BaseService

  def self.get_book_data(title, quantity)
    response = conn('http://openlibrary.org').get('/search.json') do |f|
      f.params['title'] = "#{title}"
      f.params['quantity'] = "#{quantity}"
    end
    format_json(response)
  end 
end
