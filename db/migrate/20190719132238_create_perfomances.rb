class CreatePerfomances < ActiveRecord::Migration[5.2]
  def change
    create_table :perfomances do |t|

      t.timestamps
    end
  end
end
