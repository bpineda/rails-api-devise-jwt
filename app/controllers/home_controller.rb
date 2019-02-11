class HomeController < ApplicationController
  def index
    @api_data = { "version" => "0.0.1", "author" => "Someone" }
    render :json => @api_data
  end
end
