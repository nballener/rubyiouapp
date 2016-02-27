class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :to
      t.integer :amount

      t.timestamps null: false
    end
  end
end
