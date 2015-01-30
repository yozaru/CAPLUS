class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :zaseki
      t.text :about

      t.timestamps null: false
    end
  end
end
