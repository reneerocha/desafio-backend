class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :expense_type
      t.string :document_number
      t.string :identity_number
      t.string :document_type
      t.datetime :issue_date
      t.decimal :gloss_value
      t.decimal :net_value
      t.integer :month
      t.integer :year
      t.string :portion
      t.string :passenger
      t.string :batch
      t.string :refund
      t.string :restitution
      t.string :document_url
      t.references :deputy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
