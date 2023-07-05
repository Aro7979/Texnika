require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get page_home_url
    assert_response :success
  end

  test "should get kontakt" do
    get page_kontakt_url
    assert_response :success
  end

  test "should get nas" do
    get page_nas_url
    assert_response :success
  end

  test "should get oplata" do
    get page_oplata_url
    assert_response :success
  end

  test "should get usluga" do
    get page_usluga_url
    assert_response :success
  end
end
