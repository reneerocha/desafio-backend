
require 'rails_helper'

RSpec.describe Legislature, type: :model do
  context 'valid' do
    let(:legislature) { create :legislature }
  
    it { expect(legislature).to be_valid }
  end

end
