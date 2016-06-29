class RecipesController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find[id: params[:id]]
  end

  def new
      @recipe = current_admin.recipes.build
  end

  def create
    @admin = current_admin
    @recipe = @admin.recipes.new(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe Created!"
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :content)
  end  
end
