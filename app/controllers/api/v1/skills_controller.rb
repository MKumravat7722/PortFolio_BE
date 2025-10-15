class Api::V1::SkillsController < ApplicationController
  # GET /api/v1/skills
  def index
    skills = Skill.all
    render json: skills
  end
end
