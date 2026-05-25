class CreatePayments < ActiveRecord::Migration[8.1]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :order_id
      t.string :payment_id
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end
