class Delivery < ApplicationRecord
  belongs_to :order
  enum status: [:received, :paid, :shipped]
end
