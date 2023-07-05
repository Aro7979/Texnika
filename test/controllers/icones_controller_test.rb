require "test_helper"

class IconesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @icone = icones(:one)
  end

  test "should get index" do
    get icones_url
    assert_response :success
  end

  test "should get new" do
    get new_icone_url
    assert_response :success
  end

  test "should create icone" do
    assert_difference("Icone.count") do
      post icones_url, params: { icone: { description: @icone.description, image_url: @icone.image_url, title: @icone.title } }
    end

    assert_redirected_to icone_url(Icone.last)
  end

  test "should show icone" do
    get icone_url(@icone)
    assert_response :success
  end

  test "should get edit" do
    get edit_icone_url(@icone)
    assert_response :success
  end

  test "should update icone" do
    patch icone_url(@icone), params: { icone: { description: @icone.description, image_url: @icone.image_url, title: @icone.title } }
    assert_redirected_to icone_url(@icone)
  end

  test "should destroy icone" do
    assert_difference("Icone.count", -1) do
      delete icone_url(@icone)
    end

    assert_redirected_to icones_url
  end
end
