class AddressesController < ApplicationController

  def index
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.create(address_params)
  end

  private

  def address_params
    params.require(:address).permit(:name, :email, :postal_code, :prefecture, :municipality, :house_number, :building_name, :phone_number, :request)
  end
end
