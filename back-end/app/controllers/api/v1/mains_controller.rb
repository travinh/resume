class Api::V1::MainsController < ApplicationController
    before_action :set_main, only: [:show]
    def index
        @main = Main.all 
        render json: @main
    end

    def show
        render :json => @main.to_json(include: [{:address => {:only => [:street, :city, :state,:zip]}},
                                                {:socials => {:only => [:name, :url, :className]} } ])
    end

    def create
        @main = Main.new(main_params)
        if @main.save
            render json: @main
        else
            render json:{ errors: @main.errors.full_messages}
        end
    end


    private

    def set_main
        @main = Main.find_by_id(params[:id])
    end

    def main_params
        params.require(:main).permit(:name, :description, :image, :bio, :contactmessage, :email, :phone, :github, :project, :website,:resumedownload, :address_id)
    end

end
