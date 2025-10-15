class ServiceSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :description, :icon_url

  def icon_url
    object.icon.attached? ? rails_blob_url(object.icon, only_path: false) : nil
  end
end
