# frozen_string_literal: true

class User < ApplicationRecord
  has_one_attached :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true # 追記
  validates :profile, length: { maximum: 200 } # 追記
  has_many :shift_users
end
