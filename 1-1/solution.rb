downs = 0
ups = 0
previous_depth = nil

File.foreach("sample-input.txt") do |depth|
  message = "#{depth.to_i} "

  if !previous_depth
    message += "(N/A - no previous measurement)"
  elsif depth.to_i > previous_depth
    message += "(increased)"
    ups += 1
  elsif depth.to_i < previous_depth
    message += "(decreased)"
    downs += 1
  else
    message += "(no change)"
  end

  previous_depth = depth.to_i
  puts message
end

puts "There are #{ups} measurements that are larger than the previous measurement."
