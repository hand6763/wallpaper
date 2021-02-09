class EstimationsController < ApplicationController
  def new
    @estimation = Estimation.new
  end

  def create
    @estimation = Estimation.ceate(estimation_params)
  end

  private

  def estimation_params
    params.require(:estimation).permit(:wide, :height, :ceilling_id, :grade_id)
  end
end
