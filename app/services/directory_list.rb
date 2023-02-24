#app/services/directory_list.rb

class DirectoryList
  def initialize(path)
    @files = Dir.glob(path).select { |filename| File.file?(filename) }.map { |fullpath| File.basename fullpath }.sort
  end

  def files
    @files
  end
end

DirectoryList = DirectoryList.new('/home/syte/Downloads/*')