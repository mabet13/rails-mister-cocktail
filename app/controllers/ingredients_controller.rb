class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]
  def index
    @ingredients = Ingredient.all.order(:name)
  end

  def show
  end

  def new
    @ingredients = Ingredient.all.order(:name)
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    @ingredients = Ingredient.order(:name)
    @ingredient.save
    #  redirect_to 'cocktails/ingredients/new' #ingredients_path(@ingredient)
    #else
    #  render 'cocktails/ingredients'

    #end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
