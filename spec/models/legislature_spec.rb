require 'rails_helper'

RSpec.describe Legislature, type: :model do
  let(:legislature) { create(:legislature) }

  describe 'type column' do
      it { expect(legislature.year).to eq(Integer) }
  end
end
