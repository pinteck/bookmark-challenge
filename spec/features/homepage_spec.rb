
feature 'visit homepage' do
  scenario 'see the homepage' do
    visit'/'
    expect(page).to have_content "Bookmark Manager"
  end
end