class AddToKingakuToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :kingaku, :string
  end
end
