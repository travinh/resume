class Api::V1::SkillsController < ApplicationController
    before_action :set_skill, only: [:show]
    def index
        @skill = Skill.all 
        render json: @skill
    end

    def show
        render json: @skill
    end

    def create
        @skill = Skill.new(skill_params)
        if @skill.save
            render json: @skill
        else
            render json:{ errors: @skill.errors.full_messages}
        end
    end


    private

    def set_skill
        @skill = Skill.find_by_id(params[:id])
    end

    def skill_params
        params.require(:skill).permit(:name, :level)
    end
end
