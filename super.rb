	class Bicycle
		attr_reader :gears, :wheels, :seats
		def initialize(gears = 1)
			@gears = gears
			@wheels = 2
			@seats = 1
			
		end
	end

	class Tandem < Bicycle
		def initialize(gears)
			super
			@seats = 5
		end
	end

	t = Tandem.new(1)
	puts t.gears
	puts t.wheels
	puts t.seats
	b = Bicycle.new
	puts b.gears
	puts b.wheels
	puts b.seats	

# This class is abstract; it doesn't define hello or name  
# No special syntax is required: any class that invokes methods  
# that are intended for a subclass to implement is abstract  
class AbstractKlass  
  def welcome  
    puts "#{hello} #{name}"  
  end  
end  
  
# A concrete class  
class ConcreteKlass < AbstractKlass  
  def hello; "Hello"; end  
  def name; "Ruby students"; end  
end  
  
ConcreteKlass.new.welcome # Displays "Hello Ruby students" 