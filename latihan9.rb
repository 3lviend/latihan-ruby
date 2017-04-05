datas = ["cimahi",["a1","a2"],{},5,0.1,"bandung",true,nil,false,nil,50,20,300,20,30]

def vint
	intt = []
end

def vstr
	strr = []
end

def int(data)
	ab = []
	data.each do |i|
		if i.class == Integer
			ab.push(i)
		end
	end
	return ab
end

def str(e1="String 1", e2="String 2")
	e1 + e2
end

	#if int.class == Integer
	 #  intt.push(int)
	#if str.class = String
	#		strr.push(str)
	#	end
	#end
def tampil 
	#puts vint, vstr

end
puts int(datas)