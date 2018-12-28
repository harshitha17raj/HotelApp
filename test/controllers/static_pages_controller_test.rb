require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
=======
   test "should get root" do
    get root_url
    assert_response :success
  end
>>>>>>> d810a459bf60867128d482325070112554ad159a

  test "should get home" do
    get root_path
    assert_response :success
<<<<<<< HEAD
    assert_select "title"
=======
    assert_select "title", "Hotel Booking!!"
>>>>>>> d810a459bf60867128d482325070112554ad159a
  end

  test "should get help" do
    get help_path
    assert_response :success
<<<<<<< HEAD
    assert_select "title", "Help"
=======
    assert_select "title", "Hotel Booking!!"
>>>>>>> d810a459bf60867128d482325070112554ad159a
  end

  test "should get about" do
    get about_path
    assert_response :success
<<<<<<< HEAD
    assert_select "title", "About"
=======
    assert_select "title", "Hotel Booking!!"
>>>>>>> d810a459bf60867128d482325070112554ad159a
  end

  test "should get contact" do
    get contact_path
    assert_response :success
<<<<<<< HEAD
    assert_select "title", "Contact"
  end
end
=======
    assert_select "title", "Contact | Hotel Booking!!"
  end
end

>>>>>>> d810a459bf60867128d482325070112554ad159a
