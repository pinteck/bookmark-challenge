feature 'new bookmarks' do
  scenario 'user creates a new bookmark' do
    visit'/bookmarks/new'
    fill_in('url', with: 'http://gmail.com')
    click_button 'Submit'

    expect(page).to have_content 'http://gmail.com'
  end
end