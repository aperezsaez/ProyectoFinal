# frozen_string_literal: true

class GeocontrollerController < ApplicationController
  def find_address
    @address = Geocoder.address(
      [params[:latitude], params[:longitude]]
    )
  end
end
