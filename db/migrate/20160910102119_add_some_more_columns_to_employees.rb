class AddSomeMoreColumnsToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :location, :string
    add_column :employees, :surname, :string
    add_column :employees, :dob, :datetime
    add_column :employees, :fathername, :string
    add_column :employees, :mothername, :string
    add_column :employees, :address, :text
    add_column :employees, :infosyspass, :boolean
    add_column :employees, :infosysfoodcourtpass, :boolean
    add_column :employees, :dlfpass, :boolean
    add_column :employees, :policeverificationstartdate, :datetime
    add_column :employees, :policeverificationenddate, :datetime
    add_column :employees, :policeverificationreminderdate, :datetime
    add_column :employees, :medical, :datetime
    add_column :employees, :medicalexpirydate, :datetime
    add_column :employees, :medicalreminderdate, :datetime
    add_column :employees, :arrivaldate, :datetime
    add_column :employees, :photo, :binary
    add_column :employees, :grandfathername, :string
    add_column :employees, :age, :integer
    add_column :employees, :pan, :string
    add_column :employees, :responsibility, :string
    add_column :employees, :comments, :string
    add_column :employees, :education, :string
  end
end
