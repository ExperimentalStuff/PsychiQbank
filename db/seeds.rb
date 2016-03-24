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
User.create(email: "test2@test.com", password: "12345678", password_confirmation: "12345678")

User.find(1).exams.build(title: "test1").save
User.find(1).exams.build(title: "test2").save


Examcard.create(exam_id:1,card_id:1)
Examcard.create(exam_id:1,card_id:2)
Examcard.create(exam_id:1,card_id:3)
Examcard.create(exam_id:1,card_id:4)
Examcard.create(exam_id:1,card_id:5)

Examcard.create(exam_id:2,card_id:1)
Examcard.create(exam_id:2,card_id:6)
Examcard.create(exam_id:2,card_id:7)
