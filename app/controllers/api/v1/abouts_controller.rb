class Api::V1::AboutsController < ApplicationController
  include Rails.application.routes.url_helpers

  def index
    about = About.last
    render json: about_json(about)
  end

  private

  def about_json(about)
    {
      id: about.id,
      name: about.name,
      email: about.email,
      dob: about.dob,
      location: about.location,
      bio: about.bio,
      experience: about.experience,
      availability: about.availability,
      profile_image_url: about.profile_image.attached? ? url_for(about.profile_image) : nil,
      resume_url: about.resume.attached? ? url_for(about.resume) : nil
    }
  end
end
