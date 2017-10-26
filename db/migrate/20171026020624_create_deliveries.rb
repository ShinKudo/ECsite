class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.references :order
      t.integer :status

      t.timestamps
    end
  end
end
