class RenameStudentsEmailToParentEmail < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :email, :parent_email
  end
end
