
class Box
# constractor method
	def initialize(w,h)
		@width, @height = w, h
	end

	#accessor methods
	def printWidth
		@width
	end

	def printHeight
		@height
	end
end

#create an object
box = Box.new(99, 98)	

#use accessor methods
x = box.printWidth()
y = box.printHeight()

puts "Width Of The Box Is :#{x}"
puts "Height Of The Box Is :#{y}"

#----------------------------------------------

# define a class
class Box2
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box2 = Box2.new(10, 20)

# use setter methods
box2.setWidth = 30
box2.setHeight = 50

# use accessor methods
x = box2.getWidth()
y = box2.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

#-------------------------------------------------

class Box3
	#constructor method
	def initialize(w,h)
		@width, @height = w, h
	end

	#instance method
	def getArea
		@width * @height
	end
end

# create an object
box3 = Box3.new(10, 20)

# call instance methods
a = box3.getArea()
puts "Area of the box is : #{a}"

#---------------------------------------------------

class Box4
   # Initialize our class variables
   @@count = 0
   def initialize(w,h)
      # assign instance avriables
      @width, @height = w, h

      @@count += 1
   end

   def self.printCount()
      puts "Box count is : #@@count"
   end
end

# create two object
box5 = Box4.new(10, 20)
box6 = Box4.new(30, 100)

# call class method to print box count
Box4.printCount()