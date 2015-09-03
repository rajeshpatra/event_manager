puts "EventManager Initialized!"

content = File.read "event_attendances.csv"
puts content

lines = File.readlines "event_attendances.csv"
lines.each do |line|

	# skipping header
	# next if excutes like go to next, if (condition) = true
	next if line = " , RegDate, first_name, last_name, Email_Adress, HomePhone, Street, City, State, Zipcode\n"
	columns = line.split(",")
	name = columns[2]
	puts name
end