class RenamePaymentTypesTableToPaymentTypesTable < ActiveRecord::Migration
  def change
    rename_table :payment_types, :paymenttypes

  end
end
