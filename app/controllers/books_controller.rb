class BooksController < ApplicationController
  def index
    @files = directory_list.files
  end
end
