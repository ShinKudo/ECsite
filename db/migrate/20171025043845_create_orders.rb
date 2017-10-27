class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user_id, foreign_key: true
      t.string :book_id
      t.string :references

      t.timestamps
    end
  end
end
