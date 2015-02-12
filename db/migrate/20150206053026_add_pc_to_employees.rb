class AddPcToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :pc, :string
  end
end
