# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

siblings = family.select { |key| (key == :sisters) || (key == brothers) }
puts siblings.values.flatten

# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

family = {  uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
  }

new_family = {mom: "laita",
    dad: "sanjay",
    sister:"neelam"}  

puts family.merge(new_family)
puts family
family.merge!(new_family)
puts family

# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

family.each_key do |keys|
    puts key
end

family.each_value do |value|
    puts value
end

family.each do |key, value|
    puts "#{key} : #{value}"
end

# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

example_hash = { key : "value", another_key : "another value"}
example_hash.value?("value")

# Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created? old style syntax, x as a variable is used as a key



