submarine = {
  surge: 0,
  sway: 0,
  heave: 0
}

File.foreach("input.txt") do |command|
  # destructuring assignment!
  direction, steps = command.split(' ')

  # switch case statement!
  case direction
  when "forward"
    submarine[:surge] += steps.to_i
  when "down"
    submarine[:heave] += steps.to_i
  when "up"
    submarine[:heave] -= steps.to_i
  end
end

puts submarine[:surge] * submarine[:heave]

