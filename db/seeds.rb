# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
200.times do |x|
	if x%3==0
		Card.create(fulltext: "this is card number #{x}", qtest: "this is q number #{x}", tags: "104 SOC NEU")
	elsif x%3==1
		Card.create(fulltext: "this is card number #{x}", qtest: "this is q number #{x}", tags: "104 SCH ANX")
	else
		Card.create(fulltext: "this is card number #{x}", qtest: "this is q number #{x}", tags: "104 PHA PSY")
	end
end

User.create(email: "test@test.com", password: "12345678", password_confirmation: "12345678", is_admin: true)