class Api::V1::AboutsController < ApplicationController
  def index
    about = About.last
    render json: about
  end
end
