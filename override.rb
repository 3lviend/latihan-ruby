class Box
	def initialize(w,h)
		@width, @height = w,h
	end
	
	def getArea
		@width * @height
	end
end

#subclass

class BigBox < Box
	#change
	def getArea
		@area = @width * @height
		puts "Big box area is : #{@area}"
	end
end

#create object
box = BigBox.new(20, 20)
	
#print

box.getArea

#------------------------------------------
class Box # print class information 
puts "Type of self = #{self.class}" 
puts "Name of self = #{self.name}" 
end  	 	