require "http"

system "clear"
puts "Choose an option: "
puts "[1] Random fortune"
puts "[2] Lottery numbers"
puts "[3] Visit count"

user_input = gets.chomp

if user_input == "1"
	response = HTTP.get("http://localhost:3000/fortune_url")
	fortune = response.parse["fortune"]
	puts "Your fortune is: #{fortune}"
elsif user_input == "2"
	response = HTTP.get("http://localhost:3000/lotto_url")
	lotto = response.parse
	puts lotto
elsif user_input == "3"
	response = HTTP.get("http://localhost:3000/count_url")
	count = response.parse
	puts count
end