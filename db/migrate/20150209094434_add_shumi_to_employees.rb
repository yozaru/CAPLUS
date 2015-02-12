class AddShumiToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :shumi, :string
  end
end
