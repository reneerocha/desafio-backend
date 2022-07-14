require 'rails_helper'

RSpec.describe Deputy, type: :model do
    
  context 'valid' do
    let(:deputy) { create :deputy }
  
    it { expect(deputy).to be_valid }
  end

  context "Associations" do
    it "belongs_to legislature" do
      assc = described_class.reflect_on_association(:legislature)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
