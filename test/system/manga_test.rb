require "application_system_test_case"

class MangaTest < ApplicationSystemTestCase
  setup do
    @manga = manga(:one)
  end

  test "visiting the index" do
    visit manga_url
    assert_selector "h1", text: "Manga"
  end

  test "creating a Manga" do
    visit manga_url
    click_on "New Manga"

    fill_in "Cover image url", with: @manga.cover_image_url
    fill_in "Download url", with: @manga.download_url
    fill_in "Series", with: @manga.series_id
    fill_in "Title", with: @manga.title
    fill_in "Volume number", with: @manga.volume_number
    click_on "Create Manga"

    assert_text "Manga was successfully created"
    click_on "Back"
  end

  test "updating a Manga" do
    visit manga_url
    click_on "Edit", match: :first

    fill_in "Cover image url", with: @manga.cover_image_url
    fill_in "Download url", with: @manga.download_url
    fill_in "Series", with: @manga.series_id
    fill_in "Title", with: @manga.title
    fill_in "Volume number", with: @manga.volume_number
    click_on "Update Manga"

    assert_text "Manga was successfully updated"
    click_on "Back"
  end

  test "destroying a Manga" do
    visit manga_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manga was successfully destroyed"
  end
end
