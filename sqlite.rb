require 'sqlite3'

# Check DB connection is OK
puts "[OK] sqlite3 loaded..." if defined?(SQLite3::Database)

# Assign database to a global variable
$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true

# Disconnect and close DB.
def disconnect_and_quit
  $db.close
  puts "Closing DB. Bye!"
  exit
end

# Create People table into DB
def create_table
  puts "Creating table >> PEOPLE"
  $db.execute %q{
    CREATE TABLE people(
      id integer primary key,
      name varchar(50),
      job varchar(50),
      gender varchar(6),
      age integer
    )
  }
end

#  Add's a person to people table
def add_person
  puts "Enter name: "
  name = gets.chomp
  puts "Enter job: "
  job = gets.chomp
  puts "Enter gender: "
  gender = gets.chomp
  puts "Enter age: "
  age = gets.chomp

  # insert_person_to_db
  $db.execute("INSERT INTO people (name, job, gender, age) VALUES (?, ?, ?, ?)", name, job, gender, age)
end

# Find person on a table, name or ID
def find_person
  puts "Enter name person or ID of person to find: "
  id = gets.chomp

  # searching_person_in_db
  person = $db.execute("SELECT * FROM people WHERE name = ? OR id = ?", id, id.to_i).first

  unless person
    puts "No person found"
    return
  end

  puts %Q{Name: #{person['name']}
  Job: #{person['job']}
  Gender: #{person['gender']}
  Age: #{person['age']}}
end

# Menu for actions
loop do
  puts %q{Please select an option:

    1. Create a people table
    2. Add a person
    3. Look for a person
    4. Quit}

    case gets.chomp
    when '1'
      create_table
    when '2'
      add_person
    when '3'
      find_person
    when '4'
      disconnect_and_quit
    end
end

# private
#   Insert person
#   def insert_person_to_db
#
#   end
#
#   Search person
#   def searching_person_in_db
#
#   end
