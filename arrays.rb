# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.includes?(number)
    puts "#{number} is present in array"
end    

# What will the following programs return? What is the value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

# How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

# What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5) #3
arr.index[5]
arr[5] #8

# What is the value of a, b, and c in the following program?
string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
arr = [1, 3, 5, 7, 9, 11]
arr.each_with_index do |val , index|
    puts "Index : #{index} Value: #{val}"
end    

# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

arr = [1, 3, 5, 7, 9, 11]
arr_test = []
arr.each_with_index do |val, index|
    arr[index] = val + 2
end

p arr
p arr_test