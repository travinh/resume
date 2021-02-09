class Api::V1::ResumesController < ApplicationController
    before_action :set_resume, only: [:show]
    def index
        @resume = Resume.all 
        render json: @resume
    end

    def show
        render :json => @resume.to_json(include: [{:education => {:only => [:school, :degree, :graduated,:description]}},
                                                {:work => {:only => [:company, :title, :years, :description]}},
                                                {:skill => {:only => [:name, :level]}} ])
    end

    def create
        @resume = Resume.new(resume_params)
        if @resume.save
            render json: @resume
        else
            render json:{ errors: @resume.errors.full_messages}
        end
    end


    private

    def set_resume
        @resume = Resume.find_by_id(params[:id])
    end

    def resume_params
        params.require(:resume).permit(:skillmessage, :education_id, :work_id, :skill_id)
    end
end
