class AddJobToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :job, :string
  end
end
