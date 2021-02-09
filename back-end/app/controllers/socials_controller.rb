class SocialsController < ApplicationController
    before_action :set_social, only: [:show]
    def index
        @social = Social.all 
        render json: @social
    end

    def show
        render json: @social
    end

    def create
        @social = Social.new(social)
        if @social.save
            render json: @social
        else
            render json:{ errors: @social.errors.full_messages}
        end
    end


    private

    def set_social
        @social = Social.find_by_id(params[:id])
    end

    def social_params
        params.require(:social).permit(:name, :urailrl, :className)
    end
end
