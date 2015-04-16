class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name, null: false
      t.string :description
      t.decimal :decimal, precision: 8, scale: 2, null: false
      t.string :currency, null: false
      t.string :frequency, null: false
      t.date :due_date
      t.timestamps null: false
    end
  end
end
