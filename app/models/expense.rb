class Expense < ActiveRecord::Base
  validates_presence_of :name, :amount, :currency, :frequency, :payment_date
  validates :amount, numericality: true
end
