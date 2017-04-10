class ClassAccess
	def m1 # method public
		"m1"
	end

	def m1a
		m2a
	end

	def m1b
		m2b
	end

	protected
		def m2a #method protected
			"Protected method m2a"
		end

	private 
		def m2b # method private
			"Private method m2b"
		end

	end

	class ClassAccessb < ClassAccess
		def m3a
			puts "From child m3a method access #{m2a}"
		end

		def m3b
			puts "from child m3b method access #{m2b}"
		end
	end

	ca = ClassAccess.new
	puts ca.m1 
	puts ca.m1a
	puts ca.m1b
	puts ca.m2a
	puts ca.m2b

	ca2 = ClassAccessb.new
	puts ca2.m1
	puts ca2.m1a
	puts ca2.m1b
	ca2.m2a
	ca2.m2b

	ca2.m3a
	ca2.m3b

	class Person 

	end 

	person = Person.new 
	person.name

	class Person
 #accessor method
  def name
    @name
  end
 #setter method
  def name=(str)
    @name = str
  end
end

person = Person.new
person.name = 'Dennis'
person.name # => "Dennis"
#class Person dengan attr_reader dan attr_writer
class Person
 #accessor method
 attr_reader :name

 #accessor method
 attr_writer :name
person = Person.new
person.name = 'Dennis'
person.name # => "Dennis"
end

class Person

 attr_accessor :name

  def greeting "Hello #{@name}" 
  	
  end 
 end

 person = Person.new 
 person.name = "Dennis" 
 person.greeting # => "Hello Dennis"