require "application_system_test_case"

class LandingpagesTest < ApplicationSystemTestCase
  setup do
    @landingpage = landingpages(:one)
  end

  test "visiting the index" do
    visit landingpages_url
    assert_selector "h1", text: "Landingpages"
  end

  test "creating a Landingpage" do
    visit landingpages_url
    click_on "New Landingpage"

    fill_in "Password", with: @landingpage.password
    fill_in "Username", with: @landingpage.username
    click_on "Create Landingpage"

    assert_text "Landingpage was successfully created"
    click_on "Back"
  end

  test "updating a Landingpage" do
    visit landingpages_url
    click_on "Edit", match: :first

    fill_in "Password", with: @landingpage.password
    fill_in "Username", with: @landingpage.username
    click_on "Update Landingpage"

    assert_text "Landingpage was successfully updated"
    click_on "Back"
  end

  test "destroying a Landingpage" do
    visit landingpages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Landingpage was successfully destroyed"
  end
end
