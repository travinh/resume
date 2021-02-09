class Api::V1::EducationsController < ApplicationController
    before_action :set_education, only: [:show]
    def index
        @education = Education.all 
        render json: @education
    end

    def show
        render json: @education
    end

    def create
        @education = Education.new(education_params)
        if @education.save
            render json: @education
        else
            render json:{ errors: @education.errors.full_messages}
        end
    end


    private

    def set_education
        @education = Education.find_by_id(params[:id])
    end

    def education_params
        params.require(:education).permit(:school, :degree, :graduated, :description)
    end
end
