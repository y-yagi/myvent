class Event < ApplicationRecord
  belongs_to :user

  class << self
    def build(params, current_user)
      event = Event.new(params)
      event.user = current_user
      event
    end
  end

end
