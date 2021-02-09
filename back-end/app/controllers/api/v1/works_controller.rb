class Api::V1::WorksController < ApplicationController
    before_action :set_work, only: [:show]
    def index
        @work = Work.all 
        render json: @work
    end

    def show
        render json: @work
    end

    def create
        @work = Work.new(work_params)
        if @work.save
            render json: @work
        else
            render json:{ errors: @work.errors.full_messages}
        end
    end


    private

    def set_work
        @work = Work.find_by_id(params[:id])
    end

    def work_params
        params.require(:work).permit(:company, :title, :years, :description)
    end
end
