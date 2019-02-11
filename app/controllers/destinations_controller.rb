class DestinationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @destinations = Destination.all
    render :json => @destinations
  end
end
