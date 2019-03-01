address = "0.1.4.0.2.0.0.0.0.0.10.0"

  array = address.split(".")
  for i in array
  print "/*[#{i.to_i + 1}]"
  end

  # array = address.split("/*[")
  # for i in array
  # print "/*[#{i.to_i + 1}]"
  # end
