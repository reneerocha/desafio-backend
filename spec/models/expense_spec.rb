require 'rails_helper'

RSpec.describe Expense, type: :model do
  context 'valid' do
    let(:expense) { create :expense }
  
    it { expect(expense).to be_valid }
  end
end
