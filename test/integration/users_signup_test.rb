require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'users/new'
<<<<<<< HEAD
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
    #assert is_logged_in?
=======
>>>>>>> d810a459bf60867128d482325070112554ad159a
  end
end
