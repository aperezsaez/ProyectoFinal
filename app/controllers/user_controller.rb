class UserController < ApplicationController
  attr_accessor
  def index
    @user = User.all
  end

  def show
  end
end
