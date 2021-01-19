require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'when I visit /login' do
    before(:each) do
      @user1 = User.create!(name: "jon doe", email: "example@gmail.com ", password: "password", password_confirmation: "password")
    end

    it 'allows me to log in' do
      visit '/login'
      
      fill_in "Email", with:"#{@user1.email}"
      fill_in "Password", with:"#{@user1.password}"
      click_on "Submit"
      # require 'pry'; binding.pry
      expect(current_path).to eq(images_path)
    end
  end
end