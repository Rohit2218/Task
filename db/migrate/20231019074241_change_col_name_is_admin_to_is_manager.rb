class ChangeColNameIsAdminToIsManager < ActiveRecord::Migration[7.1]
  def change
    rename_column :employees , :is_admin, :is_manager
  end
end
