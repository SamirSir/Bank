class CreateDeposits < ActiveRecord::Migration[6.0]
  def change
    create_table :deposits do |t|
      t.integer :debit
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
