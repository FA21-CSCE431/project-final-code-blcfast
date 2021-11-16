# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Receipt, type: :model do
  subject do
    described_class.new(amount: 10, reason: 'Food')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an amount' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an reason' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end
