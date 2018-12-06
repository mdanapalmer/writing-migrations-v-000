class CreateStudents < ActiveRecord::Migration[5.1]

  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT
    )
  SQL

  # Remember, the previous step has to run first so that `connection` is set!
  ActiveRecord::Base.connection.execute(sql)

end
