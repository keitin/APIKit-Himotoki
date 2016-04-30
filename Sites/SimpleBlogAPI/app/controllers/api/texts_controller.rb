class Api::TextsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    Text.create(text_params)
  end
  private
  def text_params
    params.permit(:sentence, :blog_id, :order)
  end
end
