class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.datetime :date
      t.string :deposit_identifier
      t.string :deposit_receipt_photo

      t.timestamps null: false
    end
  end
end
