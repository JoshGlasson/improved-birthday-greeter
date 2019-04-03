feature 'Entering Information' do
  scenario 'Can accept user input' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :day, with: 8
    page.select 'June', from: 'month'
    click_button "Submit"
    expect(page).to have_content 'Hi Josh! Your Birthday is 8 June'
  end
end
