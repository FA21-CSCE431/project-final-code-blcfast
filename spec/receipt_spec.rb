# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Receipt, type: :model do
  before(:all) do
    @testimg = fixture_file_upload('testimg.png')
    @reciept = Receipt.create(picture: @testimg, amount: '100.00', reason: 'test reciept')
  end

  it 'checks that reciept can be created' do
    expect(@receipt).to be_valid
  end
end
