# # def test
# #    puts "You are in the method"
# #    yield
# #    puts "You are again back to the method"
# #    yield
# # end
# # test {puts "You are in the block"}

# def test
#    yield 5
#    puts "You are in the method test"
#    yield 100
# end
# test {|i| puts "You are in the block #{i}"}


# def test(&block)
#   block.call
# end
# test { puts "Hello World!"}

# Module defined in moral.rb file

# Module defined in trig.rb file
# Module defined in moral.rb file

module Week
	time = Time.new
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
   def Time
   		puts time
   end
end