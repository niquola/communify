class AuthController < ApplicationController
  def create
    Rails.cache.write('user', env["omniauth.auth"].to_json, time_to_idle: 600.seconds, timeToLive: 600.seconds)
    redirect_to '/#/me'
  end
end
