# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher(plain_text, shift_number)
    # for each char 
    #     get the ascii value
    #     add the shift number to ascii value
    #     convert ascii value to char
    #     append char to string
    #     return final string
    encrypted_text = ""
    plain_text.each_char do |char|
        if ("a".."z").include?(char) || ("A".."Z").include?(char) 
            shift_number.times { char = char.next }
            encrypted_text += char[-1]
        else
            encrypted_text += char
        end
    end    
    return encrypted_text
end

puts caesar_cipher("What a string!", 5)

