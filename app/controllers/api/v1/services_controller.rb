class Api::V1::ServicesController < ApplicationController
  def index
    services = Service.all.map do |s|
      {
        id: s.id,
        title: s.title,
        description: s.description,
        icon_url: s.icon.attached? ? url_for(s.icon) : nil
      }
    end

    render json: services
  end
end
