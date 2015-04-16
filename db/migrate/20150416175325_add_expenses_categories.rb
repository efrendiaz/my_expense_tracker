class AddExpensesCategories < ActiveRecord::Migration
  def change
    create_table :expenses_categories, id: false do |t|
      t.belongs_to :expense, index: true
      t.belongs_to :category, index: true
    end
  end
end
