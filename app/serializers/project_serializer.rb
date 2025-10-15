class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :techStack, :liveUrl, :githubUrl

  def techStack
    JSON.parse(object.tech_stack || "[]")
  end

  def liveUrl
    object.live_url
  end

  def githubUrl
    object.github_url
  end
end
