class RecipesController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find[id: params[:id]]
  end

  def new
    if logged_in?
      @recipe = current_admin.recipes.build
      @admin = current_admin
      
    else
      redirect_to root_path
    end
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
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
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
