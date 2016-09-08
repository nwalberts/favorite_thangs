require "spec_helper"

feature "user sees a list of favorite things" do
  scenario "user views favorites" do
    CSV.open("favorites_list.csv", "a", headers: true) do |file|
      file.puts(["pokemon"])
      file.puts(["sleep"])
      file.puts(["green smoothies"])
    end

    visit "/favorites"
    expect(page).to have_content("pokemon")
    expect(page).to have_content("sleep")
    expect(page).to have_content("green smoothies")
  end

  scenario "user sees all favorites at root path" do
    CSV.open("favorites_list.csv", "a", headers: true) do |file|
      thing = "friendship"
      file.puts([thing])
    end
    visit "/"

    expect(page).to have_content("friendship")
  end
end
