class ImageSerializer

  include JSONAPI:: Serializer
  attributes :location, :image_url, :description, :credit
end
