require "sinatra/base"
require "sinatra/reloader"
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :"bookmarks/index"
  end

  # create a sinatra route for new bookmarks 
  get "/bookmarks/new" do
    erb :"bookmarks/new"
  end

  post "/bookmarks" do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
