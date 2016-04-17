class AddDetailsToPayment < ActiveRecord::Migration
  def change
    change_column :payments, :deposit_id, :integer
  end
end
