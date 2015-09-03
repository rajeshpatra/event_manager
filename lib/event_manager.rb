require "csv" #to load csv library in Ruby.
require 'sunlight/congress' #uses sunlight-congress gem

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

puts "EventManager Initialized!"

# content = File.read "event_attendances.csv"
# puts content

# Instead of read or readlines we use CSV’s open method to load our file.
# CSV library provides an additional option which allows us to convert the header names to symbols.
contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
	name = row[:first_name]
	zipcode_string = row[:zipcode].to_s
	zipcode = zipcode_string.rjust(5, '00000')[0..4]

	  legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

	puts "#{name} #{zipcode} #{legislators}"
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