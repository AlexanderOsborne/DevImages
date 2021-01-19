require 'rails_helper'

RSpec.describe 'as a visitor', type: :feature do
  describe 'When I try to sign up' do

    it 'It allows me to create an account' do
      visit new_user_path

      fill_in "Email", with:"example@gmail.com"
      fill_in "Password", with:"password"
      fill_in "Confirm Password", with:"password"
      click_on "Create Account"

      expect(current_path).to eq(images_path)
    end
  end
end