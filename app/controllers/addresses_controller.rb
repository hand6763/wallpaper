class AddressesController < ApplicationController
  def index
  end

  def create
    @address = Address.new(address_params)

    if @address.valid?
      @order_address.save
      redirect_to root_path
    else
      render 'index'
    end
  end

end
