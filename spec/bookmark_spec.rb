require 'bookmark'

describe '.all' do
  it 'shows the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmark.create(url: 'http://www.makersacademy.com')

    expect(Bookmark.all).to include('http://www.makersacademy.com')
  end
end
