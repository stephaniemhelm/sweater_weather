class Image

  attr_reader :id,
              :location,
              :image_url,
              :description,
              :credit

  def initialize(data, location)
    @id = nil
    @location = "#{location}"
    @image_url = data[:urls][:raw]
    @description = data[:alt_description]
    @credit = Credit.new(data)
  end
end
