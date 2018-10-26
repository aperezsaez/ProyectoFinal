# frozen_string_literal: true

class GeocontrollerController < ApplicationController
  def findaddress
    @address = Geocoder.address([params[:latitude], params[:longitude]])
  end
end
