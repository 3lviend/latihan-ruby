def integ
int = []
end

datas = ["cimahi",["a1","a2"],{},5,0.1,"bandung",true,nil,false,nil,50,20,300,20,30]
datas.each do |i|	

		if i.class == Integer
		   int.push(i)
		end
	end

puts integ 
					