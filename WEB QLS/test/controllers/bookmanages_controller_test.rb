require "test_helper"

class BookmanagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookmanage = bookmanages(:one)
  end

  test "should get index" do
    get bookmanages_url
    assert_response :success
  end

  test "should get new" do
    get new_bookmanage_url
    assert_response :success
  end

  test "should create bookmanage" do
    assert_difference("Bookmanage.count") do
      post bookmanages_url, params: { bookmanage: { ghiChu: @bookmanage.ghiChu, lop: @bookmanage.lop, maHS: @bookmanage.maHS, maSach: @bookmanage.maSach, ngayMuon: @bookmanage.ngayMuon, ngayTra: @bookmanage.ngayTra, soNgay: @bookmanage.soNgay, stt: @bookmanage.stt, tenSach: @bookmanage.tenSach, tenTacGia: @bookmanage.tenTacGia } }
    end

    assert_redirected_to bookmanage_url(Bookmanage.last)
  end

  test "should show bookmanage" do
    get bookmanage_url(@bookmanage)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookmanage_url(@bookmanage)
    assert_response :success
  end

  test "should update bookmanage" do
    patch bookmanage_url(@bookmanage), params: { bookmanage: { ghiChu: @bookmanage.ghiChu, lop: @bookmanage.lop, maHS: @bookmanage.maHS, maSach: @bookmanage.maSach, ngayMuon: @bookmanage.ngayMuon, ngayTra: @bookmanage.ngayTra, soNgay: @bookmanage.soNgay, stt: @bookmanage.stt, tenSach: @bookmanage.tenSach, tenTacGia: @bookmanage.tenTacGia } }
    assert_redirected_to bookmanage_url(@bookmanage)
  end

  test "should destroy bookmanage" do
    assert_difference("Bookmanage.count", -1) do
      delete bookmanage_url(@bookmanage)
    end

    assert_redirected_to bookmanages_url
  end
end
