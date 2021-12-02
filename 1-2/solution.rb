downs = 0
ups = 0
current_triple = nil
previous_triple = nil
previous_depth = nil
penultimate_depth = nil
antipenultimate_depth =  nil

File.foreach("input.txt") do |depth|
  message = ""

  if antipenultimate_depth
    current_triple = antipenultimate_depth + penultimate_depth + depth.to_i
    message = "#{current_triple} "
  end

  if !previous_triple
    message += "(N/A - no previous triple)"
  else
    if current_triple < previous_triple
      message += "(decreased)"
      downs += 1
    elsif current_triple > previous_triple
      message += "(increased)"
      ups += 1
    else
      message += "(no change)"

    end
  end

  # shift previous readings
  antipenultimate_depth = penultimate_depth
  penultimate_depth = depth.to_i
  previous_triple = current_triple

  puts message
end

puts "There are #{ups} windows that are larger than the previous measurement."
