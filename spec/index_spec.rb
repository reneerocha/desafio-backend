require 'rails_helper'

RSpec.describe 'index deputy', type: :system do
  describe 'index page' do
    it 'link upload file' do
      visit root_path
      expect(page).to have_link('Escolher arquivo', maximum: 1)
    end
    it 'link deputy' do
      visit root_path
      expect(page).to have_link('deputies', maximum: 1)

    end
  end
end