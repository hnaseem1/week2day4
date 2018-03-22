my_array = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]
#
# Save the direction of train 111 into a variable.
train_111_direction = my_array[-1][:direction]
p train_111_direction
# Save the frequency of train 80B into a variable.
train_80B_frequency = my_array[-3][:frequency_in_minutes]
p train_80B_frequency

# Save the direction of train 610 into a variable.
train_610_direction = my_array[2][:direction]
p train_610_direction

# Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.

# north_trains = []
# my_array.each do |train|
#   if train[:direction] == "north"
#     name_array.push(train[:train])
#   end
# end
#
# p north_trains

# Do the same thing for trains that travel east.

# east_trains = []
# my_array.each do |train|
#   if train[:direction] == "east"
#     name_array.push(train[:train])
#   end
# end
#
# p name_array

# You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.

def directions(direction, list)
  train_names = []
  list.each do |train|
    if train[:direction] == direction
      train_names.push(train[:train])
    end
  end
  return train_names
end

p directions("north", my_array)
p directions("east", my_array)



# Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour. You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.

my_array[1].store(:first_departure_time, 6)
p my_array[1]
