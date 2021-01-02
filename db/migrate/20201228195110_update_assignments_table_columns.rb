class UpdateAssignmentsTableColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :assignments, :course_id, :integer
    add_column :assignments, :course_name, :string
  end
end
