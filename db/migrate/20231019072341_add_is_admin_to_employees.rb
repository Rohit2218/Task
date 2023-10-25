class AddIsAdminToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :is_admin, :boolean, default:false  
  end
end
