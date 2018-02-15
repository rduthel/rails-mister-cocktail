class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[index show]

  def index; end

  def show; end

  def new; end

  def create; end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
