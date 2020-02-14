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
  #文字列と値を関係づけ
  enum apply_status: {
    applying: 1,
    not_apply: 2,
    applied: 3
  }
  # 英語から日本語
  APPLY_STATUS = {
    applying: '申請中',
    not_apply: '却下',
    applied: '承認済'
    }.freeze

  def display_apply_status
    APPLY_STATUS[apply_status.try(:to_sym)]
  end
end
