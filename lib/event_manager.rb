puts "EventManager Initialized!"

content = File.read "event_attendances.csv"
puts content

lines = File.readlines "event_attendances.csv"
lines.each do |line|
	puts line
end