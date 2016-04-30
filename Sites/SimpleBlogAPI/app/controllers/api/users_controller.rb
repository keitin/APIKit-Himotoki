class Api::UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    user = User.where(facebook_id: user_params[:facebook_id]).first_or_initialize
    user = user.update(user_params)
  end

  private
  def user_params
    params.permit(:name, :image_url, :email, :facebook_id, :token)
  end
end
