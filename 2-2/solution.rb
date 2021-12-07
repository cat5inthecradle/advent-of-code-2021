submarine = {
  aim: 0,
  depth: 0,
  horiz_position: 0
}

File.foreach("input.txt") do |command|
  # destructuring assignment!
  direction, steps = command.split(' ')

  # switch case statement!
  case direction
  when "forward"
    submarine[:horiz_position] += steps.to_i
    submarine[:depth] += submarine[:aim] * steps.to_i
  when "down"
    submarine[:aim] += steps.to_i
  when "up"
    submarine[:aim] -= steps.to_i
  end
end

puts submarine[:horiz_position] * submarine[:depth]

