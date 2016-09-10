class AddSomeColumnsToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :empid, :integer
  end
end
