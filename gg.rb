int = []
kurang50 = []
lebih50 = []
    
    datas = [55,76,200,1,22,12,33,45,63,345,87,66,86,88,96,95,85,88,456,78]
	datas.each do |i|	
	

	if i.class == Integer 
		int.push(i)

		if i % 3 == 0
			kurang50.push(i)
		 elsif i % 0 == 0
		 	lebih50.push(i)
			
		 end	
	end
end
puts "Ini Bilangan Genap  #{lebih50}"
	puts "Ini Bilangan Ganjil #{kurang50}"