nama =[]
alm=[]


arr = [0,{name: "Ramdhan",alamat:"Jl.Cimahi"},{name:"Lusyi",alamat:"Jl.Cihanjuang"},{name:"Yusuf", alamat:"Bandung"},{name:"Idris",alamat:"Jl.Cisangkan"}]
	arr.each do |i|

if i.class == Hash	
	nama.push(i[:name])
    alm.push(i[:alamat])
    end
    
end
	puts "Ini Data Nama #{nama}"
	puts "Ini Data Alamat #{alm}"
	#puts "Ini Hash True #{tru}" 

	
