def truncate_test_table
  connection = PG.connect :dbname => "bookmark_manager_test"
  connection.exec "TRUNCATE bookmarks"
end

def populate_table
  connection = PG.connect :dbname => "bookmark_manager_test"
  connection.exec "INSERT INTO bookmarks (url) VALUES (1, 'http://www.makersacademy.com')"
  connection.exec "INSERT INTO bookmarks (url) VALUES (2, 'http://www.destroyallsoftware.com')"
  connection.exec "INSERT INTO bookmarks (url) VALUES (3, 'http://www.google.com')"
end
