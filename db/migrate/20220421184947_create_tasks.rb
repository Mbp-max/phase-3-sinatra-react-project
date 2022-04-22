class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task_description, :status, :priority, :due_date
      t.integer :employee_id, :team_id
    end
  end
end
