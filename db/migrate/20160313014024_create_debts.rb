class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :amount
      t.user :user_to
      t.user :user_from

      t.timestamps null: false
    end
  end
end
