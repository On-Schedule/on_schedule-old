class UserController < ApplicationController
  before_action :authenticate_user!
  
  def dashboard
    user_signed_in?
  end
end