require "csv" #to load csv library in Ruby.
puts "EventManager Initialized!"

# content = File.read "event_attendances.csv"
# puts content

# Instead of read or readlines we use CSV’s open method to load our file.
contents = CSV.open "event_attendances.csv", headers: true
contents.each do |row|
	name = row[2]
	puts name
end
# lines = File.readlines "event_attendances.csv"

# row_index = 0



# each_with_index Calls block with two arguments, the item and its index, for each item in that array.
# lines.each_with_index do |line,index|

	# skipping header
	# next if excutes like go to next, if (condition) = true
	# next if line = " , RegDate, first_name, last_name, Email_Adress, HomePhone, Street, City, State, Zipcode\n"
	
	# row_index = row_index + 1

	# next if index == 0
	# columns = line.split(",")
	# name = columns[2]
	# puts name
# end