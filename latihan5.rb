int = []
str = []

test1 = ["Cimahi","Bandung","Jakarta","Banten","Bogor","Tanggerang","Bekasi","Depok","Bali","Papua",1,2,3,4,5,6,7,8,9,10]
	test1.each do |i|

	if i.class == Integer
	   int.push(i)

	elsif i.class == String
		str.push(i)
	end
end

	puts "Ini Type Data Integer #{int}"	
	puts "Ini Type Data String #{str}"