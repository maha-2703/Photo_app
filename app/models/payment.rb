class Payment < ApplicationRecord
  
  belongs_to :user

  validates :order_id, presence: true
  validates :payment_id, presence: true
end

