class RemoveExpensesCategoriesTable < ActiveRecord::Migration
  def change
    drop_table :expenses_categories
  end
end
