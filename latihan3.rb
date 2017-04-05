str = []
int = []
tru = []
fls = []
flo = []
nl  = []
arr = []
hsh = []   
ar2 = [] 
kurang50 = []
lebih50 = []
    
    datas = ["cimahi",["a1","a2"],{},5,0.1,"bandung",true,nil,false,nil,50,20,300,20,30]
	datas.each do |i|	
	

	if i.class == Integer 
		int.push(i)

		if i < 50 
			kurang50.push(i)
		elsif i >= 50
			lebih50.push(i)
			
		end	
		
	elsif i.class == String 
		str.push(i)

	elsif i.class == TrueClass
		tru.push(i)

	elsif i.class == Float
		flo.push(i)

	elsif i.class == NilClass
		nl.push(i)

	elsif  i.class == Hash
		hsh.push(i)

	elsif  i.class == FalseClass
		fls.push(i)
				
	elsif i.class == Array
		arr.push(i)
		puts i
		i.each do |j|
			puts j
			ar2.push(j.capitalize)
	
		end	

	end

end
	puts "Ini Variable String #{str}"
	puts "Ini Variable Integer #{int}"
	puts "Ini Variable True #{tru}" 
	puts "Ini Variable False #{fls}" 
	puts "Ini Variable Float #{flo}" 
	puts "Ini Variable Nil #{nl}" 
	puts "Ini Variable Array #{arr}" 
	puts "Ini Variable Hash #{hsh}"
	puts "Ini Variable Array Capitalize #{ar2}"
	puts "Ini Lebih Dari 50 #{lebih50}"
	puts "Ini Bilangan Kurang Dari 50 #{kurang50}"