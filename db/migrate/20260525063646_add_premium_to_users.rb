class AddPremiumToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :premium, :boolean
  end
end
