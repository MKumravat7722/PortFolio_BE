class Api::V1::EducationsController < ApplicationController
  # GET /api/v1/educations
  def index
    educations = Education.all
    render json: educations
  end
end
