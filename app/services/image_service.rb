class ImageService < BaseService

  def self.get_image(location)
    response = conn('https://api.unsplash.com').get('/search/photos') do |f|
      f.params['client_id'] = ENV['unsplash_client_id']
      f.params['query'] = "#{location}"
      f.params['per_page'] = 10
    end
    format_json(response)
  end
end
