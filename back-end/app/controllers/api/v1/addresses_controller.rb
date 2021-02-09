class AddressesController < ApplicationController
    before_action :set_address, only: [:show]
    def index
        @address = Address.all 
        render json: @address
    end

    def show
        # render json: AddressSerializer.new(@address)
        render json: @address
    end

    def create
        @address = Address.new(address_params)
        if @address.save
            render json: @address
        else
            render json:{ errors: @address.errors.full_messages}
        end
    end


    private

    def set_address
        @address = Address.find_by_id(params[:id])
    end

    def address_params
        params.require(:address).permit(:street, :city, :state, :zip)
    end

end
