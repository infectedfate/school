class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :character
      t.integer :number
      t.timestamps
    end
  end
end
