# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end


  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'J.K. Rowling'
    click_on 'Create Book'
    expect(page).to have_content('J.K. Rowling')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'price', with: '8.00'
    click_on 'Create Book'
    expect(page).to have_content('8.00')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'date', with: '9/01/1998'
    click_on 'Create Book'
    expect(page).to have_content('9/01/1998')
  end
end