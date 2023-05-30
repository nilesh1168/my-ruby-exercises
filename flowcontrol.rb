# def allCaps(arg)
#     if arg.length > 10 
#         puts arg.upcase
#     else
#         puts arg    
#     end
# end

# allCaps("hello world")
# allCaps("hell")


print "Enter a number: "
number = gets.chomp.to_i
if number <= 50
    puts "#{number} between 0 and 50"
elsif number <=100
    puts "#{number} between 51 and 100"
elsif number > 100
    puts "#{number} greater than 100"
end

