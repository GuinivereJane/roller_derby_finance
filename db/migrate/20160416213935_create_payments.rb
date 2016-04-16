class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :skater_id
      t.datetime :date
      t.integer :payment_type_id
      t.decimal :amount
      t.string :deposit_id

      t.timestamps null: false
    end
  end
end
