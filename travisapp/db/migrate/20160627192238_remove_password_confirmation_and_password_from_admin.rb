class RemovePasswordConfirmationAndPasswordFromAdmin < ActiveRecord::Migration

	change_table(:admins) do |t|
		t.remove :password
		t.remove :password_confirmation
	end
	
end
