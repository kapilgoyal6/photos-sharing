require "application_system_test_case"

class PhotoUploadsTest < ApplicationSystemTestCase
  setup do
    @photo_upload = photo_uploads(:one)
  end

  test "visiting the index" do
    visit photo_uploads_url
    assert_selector "h1", text: "Photo Uploads"
  end

  test "creating a Photo upload" do
    visit photo_uploads_url
    click_on "New Photo Upload"

    fill_in "Image", with: @photo_upload.image
    click_on "Create Photo upload"

    assert_text "Photo upload was successfully created"
    click_on "Back"
  end

  test "updating a Photo upload" do
    visit photo_uploads_url
    click_on "Edit", match: :first

    fill_in "Image", with: @photo_upload.image
    click_on "Update Photo upload"

    assert_text "Photo upload was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo upload" do
    visit photo_uploads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo upload was successfully destroyed"
  end
end
