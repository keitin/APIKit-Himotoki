class Api::ImagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    Image.create(image_params)
  end
  private
  def image_params
    params.permit(:image, :blog_id, :order)
  end
end
