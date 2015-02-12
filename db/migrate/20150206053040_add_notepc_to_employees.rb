class AddNotepcToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :notepc, :string
  end
end
