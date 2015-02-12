class CreateZasekis < ActiveRecord::Migration
  def change
    create_table :zasekis do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
