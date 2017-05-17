require 'rails_helper'

RSpec.feature "User views navbar" do
  scenario "guest user can view and use navbar" do
    
    visit "/"

    within("div.nav-wrapper") do
      expect(page).to have_content("Log In")
			expect(page).to have_content("Sign Up")
			expect(page).to have_content("Categories")
			expect(page).to have_content("About Us")
    end
  end
end
