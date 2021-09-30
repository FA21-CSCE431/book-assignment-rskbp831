# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '8.0'
    # field_labeled('Datep', disabled: true)
    # fill_in 'Datep', with: '2018-03-02 02:54:00'
    # expect(page).to have_field :datep, disabled: true
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end


  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '8.0'
    # field_labeled('Datep', disabled: true)
    # fill_in 'Datep', with: '2018-03-02 02:54:00'
    # expect(page).to have_field :datep, disabled: true
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '8.0'
    # field_labeled('Datep', disabled: true)
    # fill_in 'Datep', with: '2018-03-02 02:54:00'
    # expect(page).to have_field :datep, disabled: true
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('8.0')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '8.0'
    # field_labeled('Datep', disabled: true)
    # fill_in 'Datep', with: '2018-03-02 02:54:00'
    # expect(page).to have_field :datep, disabled: true
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content("Datep")
  end


end