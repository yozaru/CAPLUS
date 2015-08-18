class AddToKoyoToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :koyo, :string
  end
end
