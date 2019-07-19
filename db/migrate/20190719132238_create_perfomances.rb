class CreatePerfomances < ActiveRecord::Migration[5.2]
  def change
    create_table :perfomances do |t|
      t.integer :student_id
      t.integer :mark

      t.timestamps
    end
  end
end
