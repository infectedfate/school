class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :parent_name
      t.integer :group_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
