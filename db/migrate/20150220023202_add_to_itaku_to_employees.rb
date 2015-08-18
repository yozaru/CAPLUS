class AddToItakuToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :itaku, :string
  end
end
