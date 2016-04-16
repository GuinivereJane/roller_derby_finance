class CreateSkaters < ActiveRecord::Migration
  def change
    create_table :skaters do |t|
      t.string :name
      t.string :derby_name
      t.integer :derby_number

      t.timestamps null: false
    end
  end
end
