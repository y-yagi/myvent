require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup { login }

  test "visiting the index" do
    visit events_url
    assert_match 'イベントリスト', page.text
  end
end
