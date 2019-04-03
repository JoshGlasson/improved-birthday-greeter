feature 'Entering Information' do
  scenario 'Can accept user input' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :day, with: "8"
    page.select 'June', from: 'month'
    click_button "Submit"
    expect(page).to have_content 'Hi Josh! Your Birthday is the 8th of June'
  end
end

feature 'Shows countdown' do
  scenario 'birthday isnt today' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :day, with: (Date.today.day + 1).to_s
    page.select Date::MONTHNAMES[Date.today.month], from: 'month'
    click_button "Submit"
    expect(page).to have_content 'Your Birthday is in 1 days'
  end

  scenario 'birthday is today' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :day, with: (Date.today.day).to_s
    page.select Date::MONTHNAMES[Date.today.month], from: 'month'
    click_button "Submit"
    expect(page).to have_content 'Happy Birthday Josh!'
  end

  scenario 'birthday has passed' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :day, with: (Date.today.day - 1).to_s
    page.select Date::MONTHNAMES[Date.today.month], from: 'month'
    click_button "Submit"
    expect(page).to have_content 'Your Birthday is in 365 days'
  end


end
