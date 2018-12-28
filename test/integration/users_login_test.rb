require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  def setup
    @user = users(:michael)
=======

  def setup
    @user = users(:Raja)
>>>>>>> d810a459bf60867128d482325070112554ad159a
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "", password: "" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
<<<<<<< HEAD
    assert flash.empty?
  end
    test "login with valid information followed by logout" do
=======
    
  end

  test "login with valid information followed by logout" do
>>>>>>> d810a459bf60867128d482325070112554ad159a
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
<<<<<<< HEAD
=======
    # Simulate a user clicking logout in a second window.
>>>>>>> d810a459bf60867128d482325070112554ad159a
    delete logout_path
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end
<<<<<<< HEAD
  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    assert_not_empty cookies['remember_token']
  end

  test "login without remembering" do
    # Log in to set the cookie.
    log_in_as(@user, remember_me: '1')
    # Log in again and verify that the cookie is deleted.
    log_in_as(@user, remember_me: '0')
    assert_empty cookies['remember_token']
  end
end
=======

end

>>>>>>> d810a459bf60867128d482325070112554ad159a
