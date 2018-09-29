class PagesController < ApplicationController
  before_action :authenticate_user, except: :index
  attr_accessor

  def index
    @user = User.all
  end

  def show
  end
end
