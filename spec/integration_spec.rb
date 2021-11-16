# frozen_string_literal: true

require 'rails_helper'

# 1
RSpec.describe 'Creating a Receipt', type: :feature do
  scenario 'valid inputs' do
    visit new_receipt_path
    fill_in 'Amount', with: 10
    fill_in 'Reason', with: 'Food'
    click_on 'Create Receipt'
    visit receipts_path
    expect(page).to have_content(10)
    expect(page).to have_content('Food')
  end
end

# 2
RSpec.describe 'Creating a Receipt', type: :feature do
  scenario 'valid inputs' do
    visit new_receipt_path
    fill_in 'Amount', with: 50
    fill_in 'Reason', with: 'Desk'
    click_on 'Create Receipt'
    visit receipts_path
    expect(page).to have_content(50)
    expect(page).to have_content('Desk')
  end
end

# 3
RSpec.describe 'Creating a Receipt', type: :feature do
  scenario 'valid inputs' do
    visit new_receipt_path
    fill_in 'Amount', with: 100
    fill_in 'Reason', with: 'Meetings'
    click_on 'Create Receipt'
    visit receipts_path
    expect(page).to have_content(100)
    expect(page).to have_content('Meetings')
  end
end

# 4
RSpec.describe 'Creating a Receipt', type: :feature do
  scenario 'valid inputs' do
    visit new_receipt_path
    fill_in 'Amount', with: 200
    fill_in 'Reason', with: 'Travel'
    click_on 'Create Receipt'
    visit receipts_path
    expect(page).to have_content(200)
    expect(page).to have_content('Travel')
  end
end
