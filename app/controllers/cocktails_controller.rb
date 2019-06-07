class CocktailsController < ApplicationController
  # skip_before_action :verify_authenticity_token, except: [:new_ingredient]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new_ingredient
    ingredient = Ingredient.new(ingredient_params)
    ingredient.save
    # new ingredient
  end

  def destroy
    # destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
