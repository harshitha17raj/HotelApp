require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
<<<<<<< HEAD
    @user = User.create(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end
  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end

=======
    @user = User.new(name: "Example User", email: "user@example.com",password: "foobar", password_confirmation: "foobar")

  end

  

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "s"
    assert_not @user.valid?
  end
>>>>>>> d810a459bf60867128d482325070112554ad159a
end

