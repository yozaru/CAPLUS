class AddFuriganaToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :furigana, :string
  end
end
