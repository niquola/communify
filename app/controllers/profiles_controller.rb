class ProfilesController < ApplicationController
  respond_to :json

  def show
  end

  def me
    @user = Rails.cache.read('user')
    respond_with @user
  end
end
