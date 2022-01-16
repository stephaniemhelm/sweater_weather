class ImageSerializer

  include JSONAPI:: Serializer
  attributes :location, :image_url, :source, :description, :artist_name
end
