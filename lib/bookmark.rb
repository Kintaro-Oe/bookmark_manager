require 'pg'

class Bookmark

  def self.all(default="bookmark_manager")
    connection = PG.connect :dbname => default

    result = connection.exec "SELECT * FROM bookmarks"

    result.map do |row|
       row['url']
    end
  end

end
