class Api::BlogsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    @blog = Blog.create(blog_params)
  end

  private
  def image_params
    params.permit(:image)
  end

  def blog_params
    params.permit(:title, :sentence)
  end
end
