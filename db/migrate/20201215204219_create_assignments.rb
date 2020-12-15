class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :assignment_name
      t.string :assignment_type
      t.date :due_date
    end
  end
end
