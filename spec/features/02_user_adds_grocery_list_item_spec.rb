require "spec_helper"

feature "user adds a favorite item" do
  scenario "when valid form submitted" do
    visit "/favorites"

    fill_in "New Favorite Thing", with: "Unicorns"
    click_on "Add"

    expect(page).to have_current_path("/favorites")
    expect(page).to have_content("Unicorns")
  end

  scenario "when not valid submission empty li element is not added to the page" do
    visit "/favorites"
    click_on "Add"

    expect(page).not_to have_selector("li")
  end
end
