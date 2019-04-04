feature 'Entering Information' do
  scenario 'Can accept user input' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :date, with: "1995-06-08"
    click_button "Submit"
    expect(page).to have_content 'Hi Josh! Your Birthday is the 8th of June'
  end
end

feature 'Shows countdown' do
  scenario 'birthday isnt today' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :date, with: Date.new(2001, Date.today.month, Date.today.day + 1).to_s
    click_button "Submit"
    expect(page).to have_content 'Your Birthday is in 1 days'
  end

  scenario 'birthday is today' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :date, with: (Date.today)
    click_button "Submit"
    expect(page).to have_content 'Happy Birthday Josh!'
  end

  scenario 'birthday has passed' do
    visit('/')
    fill_in :name, with: "Josh"
    fill_in :date, with: (Date.today - 1).to_s
    click_button "Submit"
    expect(page).to have_content 'Your Birthday is in 365 days'
  end


end
