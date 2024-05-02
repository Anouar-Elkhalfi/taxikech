puts "Cleaning database..."
Driver.destroy_all

puts "Creating drivers..."
driver1 = {name: "John Doe", email: "john.doe@example.com", phone: "123-456-7890"}
driver2 = {name: "Jane Smith", email: "jane.smith@example.com", phone: "987-654-3210"}

[driver1, driver2].each do |attributes|
  driver = Driver.create!(attributes)
  puts "Created #{driver.name}"
end

puts "Finished!"
