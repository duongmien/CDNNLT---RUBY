require "application_system_test_case"

class BookmanagesTest < ApplicationSystemTestCase
  setup do
    @bookmanage = bookmanages(:one)
  end

  test "visiting the index" do
    visit bookmanages_url
    assert_selector "h1", text: "Bookmanages"
  end

  test "should create bookmanage" do
    visit bookmanages_url
    click_on "New bookmanage"

    fill_in "Ghichu", with: @bookmanage.ghiChu
    fill_in "Lop", with: @bookmanage.lop
    fill_in "Mahs", with: @bookmanage.maHS
    fill_in "Masach", with: @bookmanage.maSach
    fill_in "Ngaymuon", with: @bookmanage.ngayMuon
    fill_in "Ngaytra", with: @bookmanage.ngayTra
    fill_in "Songay", with: @bookmanage.soNgay
    fill_in "Stt", with: @bookmanage.stt
    fill_in "Tensach", with: @bookmanage.tenSach
    fill_in "Tentacgia", with: @bookmanage.tenTacGia
    click_on "Create Bookmanage"

    assert_text "Bookmanage was successfully created"
    click_on "Back"
  end

  test "should update Bookmanage" do
    visit bookmanage_url(@bookmanage)
    click_on "Edit this bookmanage", match: :first

    fill_in "Ghichu", with: @bookmanage.ghiChu
    fill_in "Lop", with: @bookmanage.lop
    fill_in "Mahs", with: @bookmanage.maHS
    fill_in "Masach", with: @bookmanage.maSach
    fill_in "Ngaymuon", with: @bookmanage.ngayMuon
    fill_in "Ngaytra", with: @bookmanage.ngayTra
    fill_in "Songay", with: @bookmanage.soNgay
    fill_in "Stt", with: @bookmanage.stt
    fill_in "Tensach", with: @bookmanage.tenSach
    fill_in "Tentacgia", with: @bookmanage.tenTacGia
    click_on "Update Bookmanage"

    assert_text "Bookmanage was successfully updated"
    click_on "Back"
  end

  test "should destroy Bookmanage" do
    visit bookmanage_url(@bookmanage)
    click_on "Destroy this bookmanage", match: :first

    assert_text "Bookmanage was successfully destroyed"
  end
end
