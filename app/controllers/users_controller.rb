class UsersController < ApplicationController

  skip_before_action :authenticate_user! , only: [:create]
  before_action :authenticate_user!

  # def new
  #   @user = User.new
  # end

end
