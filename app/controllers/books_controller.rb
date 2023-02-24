class BooksController < ApplicationController
  def index
    @files = DirectoryList.files
  end
end
