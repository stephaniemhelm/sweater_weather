class Image

  attr_reader :id,
              :location,
              :image_url,
              :source,
              :description,
              :artist_name

  def initialize(data, location)
    @id = nil
    @location = "#{location}"
    @image_url = data[:urls][:raw]
    @source = data[:user][:links][:photos]
    @description = data[:alt_description]
    @artist_name = data[:user][:name]
  end
end
