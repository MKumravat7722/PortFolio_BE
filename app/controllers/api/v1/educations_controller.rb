class Api::V1::EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: educations
  end
end
