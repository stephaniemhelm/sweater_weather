class Api::V1::ImageController < ApplicationController

  def show
    location = params[:location]
    image = ImageFacade.get_image(location)

    render json: ImageSerializer.new(image)
  end
end
