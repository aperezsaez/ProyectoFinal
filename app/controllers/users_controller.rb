# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @user = User.where(role: 2).last(3)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit;end
  private

  def user_params
    params.require(:user).permit(:name, :photo, :email, :phone, :ocupation, :role, :created_at)
  end
end
