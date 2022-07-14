 require 'rails_helper'


RSpec.describe "/deputies", type: :request do
  # Deputy. As you add validations to Deputy, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      get deputies_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      deputy = create(:deputy)
      create(:expense, deputy: deputy)
      get deputy_url(deputy)
      expect(response).to be_successful
    end
  end

  context 'when the import csv ' do
    it 'redirect to deputies_path' do
      csv = Rack::Test::UploadedFile.new('spec/fixtures/test.csv')
      post import_deputies_path, params: { file: csv }
      expect(response).to redirect_to(deputies_path)
    end
  end


end
