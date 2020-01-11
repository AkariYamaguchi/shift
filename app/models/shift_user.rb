# frozen_string_literal: true

class ShiftUser < ApplicationRecord
  enum work_type: {
    am: 1,
    pm: 2,
    all_day: 3
  }
  # 英語から日本語
  WORK_TYPE = {
    am: '午前',
    pm: '午後',
    all_day: '1日'
  }.freeze
  def display_work_type
    WORK_TYPE[work_type.try(:to_sym)]
  end
end
