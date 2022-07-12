class CreateDeputies < ActiveRecord::Migration[6.0]
  def change
    create_table :deputies do |t|
      t.string :name
      t.integer :deputy_id
      t.string :identity_number
      t.string :state
      t.string :party
      t.references :legislature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
