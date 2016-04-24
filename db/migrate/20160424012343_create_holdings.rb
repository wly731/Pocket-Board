class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.string :symbol
      t.integer :allocation
      t.integer :stock_id
      t.integer :portfolio_id

      t.timestamps null: false
    end
  end
end
