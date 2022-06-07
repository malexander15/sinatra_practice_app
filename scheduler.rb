class Scheduler
  require 'active_model'
  extend ActiveModel::Naming
  extend ActiveModel::Callbacks
  include ActiveModel::Conversion
  include ActiveModel::Validations
  attr_accessor :start_time, :end_time, :full_schedule

  def initialize(start_time, end_time)
    @start_time = start_time
    @end_time = end_time
    @current_schedule = Schedule.full_schedule
  end

  def schedule_meeting
    # Handle scheudling a new meeting or rescheduling one
    can_be_scheduled?
  end

  def can_be_scheduled?
    current_schedule[start_time] == end_time
  end

  def cancel_meeting

  end
end
