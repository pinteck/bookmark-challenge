feature 'view bookmarks' do
  scenario 'see the list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'www.google.com'
    expect(page).to have_content 'www.makersacademy.com'
    expect(page).to have_content 'www.github.com'
  end
end