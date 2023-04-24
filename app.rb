require_relative "lib/event.rb"
require_relative "lib/user.rb"

puts "--- user test 1"

julie = User.new("julie", "julie_mail@test.com", 22)
puts julie
puts julie.mail
puts julie.age

print "\n"
puts "--- user test 2"

julie = User.new("julie", "julie_mail@test.com", 22)
zack = User.new("zack", "zack_mail@test.com", 32)
vava = User.new("vava", "vava_mail@test.com", 30)
puts julie.mail
puts zack.age
puts vava

print "\n"
puts "--- event test 1"

test1 = Event.new("2023-04-24 15:55", 30, "push git")
puts test1.start_date
puts test1.duration
puts test1.title

print "\n"
puts "--- event test 2"

test2 = Event.new("2023-04-24 15:55", 30, "party hard", ["truc@machin.com", "bidule@chose.fr"])
puts test2.start_date
puts test2.duration
puts test2.title
print "#{test2.mails}\n"

print "\n"
puts "--- event test 3"

test3 = Event.new("2023-04-24 15:55", 30, "party hard", ["truc@machin.com", "bidule@chose.fr"])
puts test3.start_date
puts test3.postpone_24h

print "\n"
puts "--- event test 4"

passed = Event.new("2021-04-24 15:55", 30, "party hard", ["truc@machin.com", "bidule@chose.fr"])
not_passed = Event.new("2026-04-24 15:55", 30, "party hard", ["truc@machin.com", "bidule@chose.fr"])
puts passed.is_past?
puts passed.is_future?
puts not_passed.is_past?
puts not_passed.is_future?

print "\n"
puts "--- event test 5"

event1 = Event.new((Time.now + 900).to_s, 30, "party hard", ["truc@machin.com", "bidule@chose.fr"])
event2 = Event.new((Time.now + 1860).to_s, 30, "party harder", ["truc@machin.com", "bidule@chose.fr"])
puts event1.is_soon?
puts event2.is_soon?

print "\n"
puts "--- event test 6"

event1 = Event.new((Time.now+600).to_s, 30, "Party Hard", ["truc@machin.com", "bidule@chose.fr"])
puts event1.to_str