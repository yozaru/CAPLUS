class AddJicoToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :jico, :text
  end
end
