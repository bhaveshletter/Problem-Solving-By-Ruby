=begin
 Ruby v2.2.1
 Count soring of integer numbers
 Input: 196948201
 Output: 998642110
=end

print("Enter number: ")
no = gets.chomp!.to_i

puts("Your input is #{no}")

nineToOneDigits = 9.downto(1)

digits = Hash.new(0)
nineToOneDigits.collect{|i| digits[i] = 0 }

while no > 0
  mod = no % 10
  no/=10
  digits[mod]+=1
end

result = ''

digits.each do |digit, value|
  if value
    tempDigit = digit.to_s
    value.times { |_| result += tempDigit }
  end
end

puts "Result: " + result
