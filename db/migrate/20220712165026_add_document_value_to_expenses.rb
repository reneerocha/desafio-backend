class AddDocumentValueToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :document_value, :decimal
  end
end
