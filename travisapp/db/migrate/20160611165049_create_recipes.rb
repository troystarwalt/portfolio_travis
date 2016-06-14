class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :content
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
