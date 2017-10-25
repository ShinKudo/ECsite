class AddColumnsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :mail_address, :string
  end
end
