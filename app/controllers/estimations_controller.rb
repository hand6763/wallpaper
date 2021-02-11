class EstimationsController < ApplicationController
  def new
    @estimation = Estimation.new
  end

  def create
    @estimation = Estimation.new(estimation_params)
    if @estimation.save
      redirect_to @estimation
    else
      render :new
    end
  end

  def show
    @estimation = Estimation.find(params[:id])
    @area_price = @estimation.area_price
    @sum_price = @estimation.sum_price
  end

  private

  def estimation_params
    params.require(:estimation).permit(:wide_id, :ceilling_id, :grade_id)
  end
end
