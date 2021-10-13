require 'pg'

feature 'view bookmarks' do
  scenario 'see the list of bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.twitter.com/')
    Bookmark.create(url: 'http://www.google.com')
  end
end