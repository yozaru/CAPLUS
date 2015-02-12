class AddMailToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :mail, :string
  end
end
