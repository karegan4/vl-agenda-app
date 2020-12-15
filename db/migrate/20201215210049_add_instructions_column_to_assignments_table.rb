class AddInstructionsColumnToAssignmentsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :instructions, :string
  end
end
