require 'test_helper'

class EventTest < ActiveSupport::TestCase
  sub_test_case('validation') do
    test 'should have the necessary required validators' do
      event = Event.new(user: users(:google))
      assert_not event.valid?
      assert_equal [:name], event.errors.keys
    end
  end

  test 'build return Event instance' do
    params = ActionController::Parameters.new(name: 'ダミー')
    params.permit!
    event = Event.build(params, users(:google))
    assert_instance_of Event, event
    assert_equal users(:google).id, event.user_id
    assert_equal 'ダミー', event.name
  end
end
