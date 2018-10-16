class PagesController < ApplicationController
  before_action :authenticate_user!, except: :index
  attr_accessor

  def index
    @user = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo, :email, :phone, :bio, :role)
  end
end
