# frozen_string_literal: true

class ExpenseType < ApplicationRecord
  validates :etype, presence: true
  validates :description, presence: true
end
