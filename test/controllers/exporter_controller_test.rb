require 'test_helper'

class ExporterControllerTest < ActionDispatch::IntegrationTest
  test "should get questions" do
    get exporter_questions_url
    assert_response :success
  end

end
