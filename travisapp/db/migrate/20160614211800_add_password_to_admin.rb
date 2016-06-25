class AddPasswordToAdmin < ActiveRecord::Migration
  def change
  	add_column :admins, :password, :text
  end
end
