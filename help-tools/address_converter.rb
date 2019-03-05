address = "/*[1]/*[2]/*[40]/*[2]/*[1]/*[3]"

  # array = address.split(".")
  # for i in array
  # print "/*[#{i.to_i + 1}]"
  # end

  array = address.split("/*[")
  for i in array
    next if i == array[0]
    print "#{(i[0...-1]).to_i - 1}."
  end
