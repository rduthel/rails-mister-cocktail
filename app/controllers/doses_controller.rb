class DosesController < ApplicationController
  def new
    @dose     = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create; end

  def destroy
    Dose.find(params[:id]).destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
