class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :transaction_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
