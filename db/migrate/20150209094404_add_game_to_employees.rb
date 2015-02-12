class AddGameToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :game, :string
  end
end
