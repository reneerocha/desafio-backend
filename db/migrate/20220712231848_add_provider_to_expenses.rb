class AddProviderToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :provider, :string
  end
end
