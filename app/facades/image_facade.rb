class ImageFacade

  def self.get_image(location)
    data = ImageService.get_image(location)[:results].first
    Image.new(data, location)
  end
end
