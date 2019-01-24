feature 'Testing infrastructure:' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Birthday Bears'
  end
end

feature 'Data entry:' do
  scenario 'Can enter name' do
    visit('/')
    fill_in :name, with: 'Will'
    click_button 'Submit'
    expect(page).to have_content 'Will'
  end
  scenario 'Can enter birthday' do
    visit('/')
    fill_in :day, with: '09'
    fill_in :month, with: '01'
    click_button 'Submit'
    expect(page).to have_content '09 / 01'
  end
end
