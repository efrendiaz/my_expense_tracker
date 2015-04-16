class FixPriceOnExpenses < ActiveRecord::Migration
  def change
    change_table :expenses do |t|
      t.rename :decimal, :amount
    end
  end
end
