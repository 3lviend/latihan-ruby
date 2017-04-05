nama =[]
alm=[]


arr = [{name: "Ramdhan",alamat:"Jl.Cimahi"},{name:"Lusyi",alamat:"Jl.Cihanjuang"},{name:"Yusuf", alamat:"Bandung"},{name:"Idris",alamat:"Jl.Cisangkan"}]
	arr.each do |i|
		
	nama.push(i[:name])
    alm.push(i[:alamat])
    
end
	puts "Ini Data Nama #{nama}"
	puts "Ini Data Alamat #{alm}"
	#puts "Ini Hash True #{tru}" 

	
