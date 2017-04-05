def test(a1="Ruby", a2="Perl")
	puts "The Proogramming language is #{a1}"
	puts "The Proogramming language is #{a2}"
end
test "C", "C++"
test

def test2 
	i = 100
	j = 200
	k = 300
return i, j, k
end
var = test2
puts test2

def sample (*test3)
	puts "The Number of parameters is #{test3.length}"
for j in 0...test3.length
	puts "The parameters are #{test3[j]}"
end

end

sample "Zara", "6", "F"
sample "Mac", "36", "MCA"