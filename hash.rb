	myHash = { key1:["First Array of this hash","Second array of this hash"], key2:"This is string in hash", key3:{key11:"Hash in hash 1", hash2:[10,{hash3:["string",12]}]}}

puts myHash[:key3][:hash2][1][:hash3][0]