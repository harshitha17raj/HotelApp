require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
<<<<<<< HEAD
    get login_path
=======
    get sessions_new_url
>>>>>>> d810a459bf60867128d482325070112554ad159a
    assert_response :success
  end

end
