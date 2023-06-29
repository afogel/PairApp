# frozen_string_literal: true

class StandupMeeting::MeetingRowComponent < ViewComponent::Base
  def initialize(standup_meeting:)
    @standup_meeting = standup_meeting
  end

  attr_reader :standup_meeting
end