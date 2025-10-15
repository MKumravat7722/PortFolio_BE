class AboutSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id,
             :name,
             :email,
             :dob,
             :location,
             :bio,
             :experience,
             :availability,
             :profile_image_url,
             :resume_url

  def profile_image_url
    if object.profile_image.attached?
      rails_blob_url(object.profile_image, only_path: false)
    end
  end

  def resume_url
    if object.resume.attached?
      rails_blob_url(object.resume, only_path: false)
    end
  end
end
