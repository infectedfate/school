class FixSubjectsAndPerfomanceTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :subjects, :perfomance_id
    add_column :perfomances, :subject_id, :integer
  end
end
