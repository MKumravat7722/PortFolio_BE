class Api::V1::ProjectsController < ApplicationController
  def index
    projects = Project.all.map do |p|
      {
        id: p.id,
        title: p.title,
        description: p.description,
        techStack: JSON.parse(p.tech_stack || '[]'),
        liveUrl: p.live_url,
        githubUrl: p.github_url
      }
    end
    render json: projects
  end  
end
