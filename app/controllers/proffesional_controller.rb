class ProffesionalController < ApplicationController
  def index
    @user = User.where(role: 2).all
  end
end
