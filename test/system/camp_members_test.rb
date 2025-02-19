require "application_system_test_case"

class CampMembersTest < ApplicationSystemTestCase
  setup do
    @camp_member = camp_members(:one)
  end

  test "visiting the index" do
    visit camp_members_url
    assert_selector "h1", text: "Camp Members"
  end

  test "creating a Camp member" do
    visit camp_members_url
    click_on "New Camp Member"

    fill_in "Age", with: @camp_member.age
    fill_in "Church", with: @camp_member.church_id
    fill_in "City", with: @camp_member.city
    fill_in "Dob", with: @camp_member.dob
    fill_in "Email", with: @camp_member.email
    fill_in "Entered On", with: @camp_member.entered_on
    fill_in "First Name", with: @camp_member.first_name
    fill_in "Last Name", with: @camp_member.last_name
    fill_in "Paid", with: @camp_member.paid
    fill_in "Payment Type", with: @camp_member.payment_type
    fill_in "Phone Number", with: @camp_member.phone_number
    fill_in "State", with: @camp_member.state
    fill_in "Street", with: @camp_member.street
    fill_in "Zip", with: @camp_member.zip
    click_on "Create Camp member"

    assert_text "Camp member was successfully created"
    click_on "Back"
  end

  test "updating a Camp member" do
    visit camp_members_url
    click_on "Edit", match: :first

    fill_in "Age", with: @camp_member.age
    fill_in "Church", with: @camp_member.church_id
    fill_in "City", with: @camp_member.city
    fill_in "Dob", with: @camp_member.dob
    fill_in "Email", with: @camp_member.email
    fill_in "Entered On", with: @camp_member.entered_on
    fill_in "First Name", with: @camp_member.first_name
    fill_in "Last Name", with: @camp_member.last_name
    fill_in "Paid", with: @camp_member.paid
    fill_in "Payment Type", with: @camp_member.payment_type
    fill_in "Phone Number", with: @camp_member.phone_number
    fill_in "State", with: @camp_member.state
    fill_in "Street", with: @camp_member.street
    fill_in "Zip", with: @camp_member.zip
    click_on "Update Camp member"

    assert_text "Camp member was successfully updated"
    click_on "Back"
  end

  test "destroying a Camp member" do
    visit camp_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Camp member was successfully destroyed"
  end
end
