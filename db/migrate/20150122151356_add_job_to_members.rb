class AddJobToMembers < ActiveRecord::Migration
  def change
    add_column :members, :job, :string
  end
end
