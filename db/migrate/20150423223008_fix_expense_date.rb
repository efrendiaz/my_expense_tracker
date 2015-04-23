class FixExpenseDate < ActiveRecord::Migration
  def change
    change_table :expenses do |t|
      t.rename :due_date, :payment_date
    end
  end
end
