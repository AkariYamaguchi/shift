# frozen_string_literal: true

class ShiftUser < ApplicationRecord
  belongs_to :shift
  belongs_to :user

  enum work_type: {
    holiday: 0,
    am: 1,
    pm: 2,
    all_day: 3
  }
  # 英語から日本語
  WORK_TYPE = {
    holiday: '-',
    am: '午前',
    pm: '午後',
    all_day: '1日'
  }.freeze

  def display_work_type
    WORK_TYPE[work_type.try(:to_sym)]
  end

  def start_time
    shift.business_day
  end

end
