class RenameTypeToMethod < ActiveRecord::Migration
  def change
    rename_column :paymenttypes, :type, :method

  end
end
