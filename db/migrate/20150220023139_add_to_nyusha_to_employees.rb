class AddToNyushaToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :nyusha, :string
  end
end
