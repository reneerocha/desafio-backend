require 'rails_helper'

feature 'Homepage Features' do
    before { visit root_path }
   
    it 'Title Deputados', :selenium_chrome do
      expect(page).to have_content 'Deputados'
    end

    it 'link upload file', :selenium_chrome do
        visit root_path
        expect(page).to have_link('Escolher arquivo', maximum: 1)
      end
      it 'link deputy', :selenium_chrome do
        visit root_path
        expect(page).to have_link('deputies', maximum: 1)
      end
  end