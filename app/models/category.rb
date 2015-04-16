class Category < ActiveRecord::Base
  has_and_belongs_to_many :expenses, join_table: "expenses_categories"
end
