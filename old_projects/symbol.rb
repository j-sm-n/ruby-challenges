lunch_pick1 = { name: "John", cuisine: "Salad"}
lunch_pick2 = { name: "Misty", cuisine: "BBQ"}
lunch_pick3 = { name: "Jennifer", cuisine: "Thai"}
lunch_pick4 = { name: "Steve", cuisine: "Ethiopian"}

lunch_today = lunch_pick3[:cuisine]
winner = lunch_pick3[:name]

puts "The cuisine for today's lunch is #{lunch_today}, thanks #{winner}!"