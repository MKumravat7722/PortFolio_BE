class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :techStack, :liveUrl, :githubUrl

  def techStack
    value = object.tech_stack

    begin
      parsed = JSON.parse(value)
      parsed.is_a?(Array) ? parsed : [parsed]
    rescue JSON::ParserError, TypeError
      value.present? ? [value] : []
    end
  end

  def liveUrl
    object.live_url
  end

  def githubUrl
    object.github_url
  end
end
