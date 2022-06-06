class Scheduler
  require 'active_model'
  extend ActiveModel::Naming
  extend ActiveModel::Callbacks
  include ActiveModel::Conversion
  include ActiveModel::Validations
  attr_accessor :start_time, :end_time

  def initialize(start_time, end_time)

  end

  def schedule_meeting
    # Handle scheudling a new meeting or rescheduling one
  end

  def cancel_meeting

  end
end
