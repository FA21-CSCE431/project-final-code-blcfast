# frozen_string_literal: true

class Receipt < ApplicationRecord
  has_one_attached :picture
  validates :picture, presence: true
  validates :reason, presence: true
  validates :amount, presence: true
  validates :date, presence: true
  validates :status, presence: true
  validates :expense_type, presence: true
end
