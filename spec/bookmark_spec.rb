require 'bookmark'

describe '.all' do
  it 'shows the bookmarks' do
    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.makersacademy.com/')
    expect(bookmarks).to include('http://www.twitter.com/')
  end
end
