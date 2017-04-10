$bilangan = [55,76,200,1,22,12,33,45,63,345,4,5,87,66,86,88,96,95,85,88,456,78]
class User
   
#       def initialize(a)
#       @admin = a
#       end

   
#       def getAdmin
#       @admin	
#       end

# 	  #def setAdmin=(value)
#      #   @admin = value
#      #end

#       def setAdmin2 value
#       @admin = value
#       end


#    user = User.new("This is String")

#    # user.setAdmin = "String is changed"
#    user.setAdmin2("name 2")
#    u = user.getAdmin()
#    u = user.getAdmin()
#    puts "Value  : #{u}"

# end

def genap(data)
      gn = []
      data.each do |i|
         if i % 2 == 0
         gn.push(i)   
         end
      end
    return gn
end

def ganjil(data)
      gnj = []
      data.each do |i|
         if i % 2 == 1
         gnj.push(i)   
         end
      end
    return gnj.class
end

end
# def tampilkan(d)
#    gen = genap(d)
# end
# puts "Ini Bilangan Genap: #{$bilangan}"

tam1obj = User.new
tam2obj = User.new

puts tam1obj.genap($bilangan)
puts tam2obj.ganjil($bilangan)
# def genap
    
#       if i % 2 == 0
#       puts "Ini bilangan Genap : #{$bilangan}"  
#       end
   

# def tampil

 #bikin 2 method
 #1. Buat sorting data ganjil,return array isi hasil ganjil, bikin satu parameter,parameter di passing sama object yang manggil
 #2.                    genap, return array isi hasil genap, 
 #3. panggil method, lalu tampilkan

