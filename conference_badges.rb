def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  name_array.collect { |name| badge_maker(name) }
end

def assign_rooms(speakers_array)
  speakers_array.each_with_index.collect { |name, index| "Hello, #{name}! You'll be assigned to room #{index+1}!" }
end

def printer(attendees)
  batch_badge_creator(attendees).each { |attendee_phrase| puts attendee_phrase }
  assign_rooms(attendees).each { |assign_room_phrase| puts assign_room_phrase }
end
