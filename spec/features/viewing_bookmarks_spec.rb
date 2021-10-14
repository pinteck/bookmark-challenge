require 'pg'

feature 'view bookmarks' do
  scenario 'see the list of bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.twitter.com/', title: 'Twitter')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
  end
end