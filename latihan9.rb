datas = ["cimahi",["a1","a2"],{},5,0.1,0.8,"Jakarta",8.89,["a5","a3"],"bandung",true,nil,false,false,nil,50,20,300,20,30]



def int(data=[])
	ab = []
	data.each do |i|
		if i.class == Integer
			ab.push(i)
		end
	end
	return ab
end

def str(data)
	cd = []
	data.each do |i|
		if i.class == String
			cd.push(i)
		end
	end
	return cd
end

def flo(data)
	ef = []
	data.each do |i|
		if i.class == Float
			ef.push(i)
		end
	end
	return ef
end

def nill(data)
	gh = []
	data.each do |i|
		if i.class == NilClass
			gh.push(i)
		end
	end
	return gh
end

def tru(data)
	ij = []
	data.each do |i|
		if i.class == TrueClass
			ij.push(i)
		end
	end
	return ij
end

def fal(data)
	kl = []
	data.each do |i|
		if i.class == FalseClass
			kl.push(i)
		end
	end
	return kl
end

def hash(data)
	mn = []
	data.each do |i|
		if i.class == Hash
			mn.push(i)
		end
	end
	return mn
end

def arr(data)
	op = []
	data.each do |i|
		if i.class == Array
			op.push(i)
		end
	end
	return op
end

def tampil(d)
	v1 = int(d)
	v2 = str(d)
	v3 = nill(d)
	v4 = arr(d)
	v5 = hash(d)
	v6 = flo(d)
	v7 = tru(d)
	v8 = fal(d)
	gab = v1.concat(v2).concat(v3).concat(v4).concat(v5).concat(v6).concat(v7).concat(v8)

end

puts tampil(datas)

 
# puts "Ini Data String #{str(datas)}"
# puts "Ini Data Float #{flo(datas)}"
# puts "Ini Data True #{tru(datas)}"
# puts "Ini Data Nil #{nill(datas)}"
# puts "Ini Data False #{fal(datas)}"
# puts "Ini Data Hash #{hash(datas)}"
# puts "Ini Data  Array #{arr(datas)}"

# task
# buat satu method untuk menggabungkan
# semua return array dari method di atas menggunakan concat
# panggil method tersebut di baris paling bawah dan tampilkan(putus)