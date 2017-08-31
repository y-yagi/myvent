require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup { login }

  test "visiting the index" do
    visit events_url
    assert_match 'イベントリスト', page.text
  end

  test "create new event" do
    visit events_url
    click_on '登録'

    fill_in('event[name]', with: 'ブリューゲル「バベルの塔」展')
    fill_in('event[start_at]', with: '2017-04-18')
    fill_in('event[end_at]', with: '2017-07-02')
    fill_in('event[url]', with: 'http://babel2017.jp/')
    fill_in('event[place_name]', with: '東京都美術館')
    fill_in('event[memo]', with: '前売り券はもってない')
    click_on '登録'

    assert_match 'ブリューゲル「バベルの塔」展', page.text
    event = Event.last
    assert_equal 'ブリューゲル「バベルの塔」展', event.name
    assert_not_nil event.start_at
    assert_not_nil event.end_at
    assert_equal 'http://babel2017.jp/', event.url
    assert_equal '東京都美術館', event.place_name
    assert_equal '前売り券はもってない', event.memo
  end
end
