class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.integer :emp_id
      t.string :name
      t.date :date_of_joining
      t.float :leaves
      t.string :company
      t.string :department, default:"tech"
      t.boolean :is_active, default:"true"

      t.timestamps
    end
  end
end
