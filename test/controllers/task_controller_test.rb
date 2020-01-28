require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get tasks" do
    get task_tasks_url
    assert_response :success
  end

end
