require 'rails_helper'

RSpec.describe "as a looged out user" do
  let!(:user) { create :user }

  describe "when i visit the root path it" do
    it "redirects me to the login page" do
      visit root_path

      expect(current_path).to eq("/users/sign_in")

      fill_in :Email, with: user.email
      fill_in :Password, with: user.password
      click_on "Log in"

      expect(current_path).to eq(root_path)
    end

    it "does not redirect me to the root path if my password is invalid" do
      visit root_path

      fill_in :Email, with: user.email
      fill_in :Password, with: "notMyPassword"
      click_on "Log in"

      expect(current_path).to eq("/users/sign_in")
      expect(page).to have_content("Invalid Email or password")
    end

    it "does not redirect me to the root path if user does not exist" do
      visit root_path

      fill_in :Email, with: "some@email.com"
      fill_in :Password, with: "notMyPassword"
      click_on "Log in"

      expect(current_path).to eq("/users/sign_in")
      expect(page).to have_content("Invalid Email or password")
    end
  end
end