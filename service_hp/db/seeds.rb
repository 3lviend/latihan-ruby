# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = [{name:'Admin'},{name:'CS'},{name:'Teknisi'}]

roles.each do |role|
	r = Role.new(name: role[:name])
	r.save
end

Staff.create!([{
  name: "Susi",
  username: "admin@gmail.com",
  password: "123456",
  role_id: 1
},
{
  name: "Rahma",
  username: "rahma@gmail.com",
  password: "asd123",
  role_id: 2
},
{
  name: "Dheny",
  username: "dheny@gmail.com",
  password: "123asd",
  role_id: 3
}])

items = [
	{
	  name: "LCD",
	  category: "Hardware",
	  item_price: 3000
	},
	{
	  name: "Flash",
	  category: "Software",
	  item_price: 5000
	},
	{
	  name: "Camera",
	  category: "Hardware",
	  item_price: 35000
	}
]

items.each do |item|
	item = Item.new(name: item[:name], category: item[:category], item_price: item[:item_price])
	item.save
end

