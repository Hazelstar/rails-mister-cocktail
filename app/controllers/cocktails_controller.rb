class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail.create(cocktail_params)
    redirect_to cocktails_path(@cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient, :doses)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
