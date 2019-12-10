require "sinatra"
require "sinatra/reloader"
require "googlebooks"


get '/' do
    erb :search
end
# this  works...dont break it!!!
post '/' do
    @book = GoogleBooks.search(params[:query]).first
    @title = @book.title
    @author = @book.authors
    @pic = @book.image_link(:zoom => 2)
    @description = @book.description
    @categories = @book.categories
    @info = @book.info_link
    puts @book
	erb :result
end
 