class AddUserIdColumnToAssignments < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :user_id, :integer
  end
end
