class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :book, foreign_key: true
      t.string :references
      t.string :email
      t.timestamps
    end
  end
end
