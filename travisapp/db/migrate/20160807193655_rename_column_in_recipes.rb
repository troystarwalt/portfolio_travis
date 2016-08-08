class RenameColumnInRecipes < ActiveRecord::Migration
  def change
    rename_column :recipes, :content, :description
    add_column :recipes, :ingredient_list, :text, null: false
  end
end
