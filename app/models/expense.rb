class Expense < ActiveRecord::Base
  has_and_belongs_to_many :categories, join_table: "expenses_categories"
  validates_presence_of :name, :amount, :currency, :frequency
  validates :amount, numericality: true
end
