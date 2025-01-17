# frozen_string_literal: true

class FlashComponent < ViewComponent::Base
  TYPE_THEMES = {
    notice: 'success',
    alert: 'error',
    form_errors: 'error'
  }.freeze

  def initialize(type:, message:)
    @type = type.to_sym
    @message = message
  end

  attr_reader :type, :message

  def theme
    "alert-#{TYPE_THEMES.fetch(type)}"
  end
end
