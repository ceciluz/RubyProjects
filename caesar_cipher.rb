def caesar_cipher(message, key)
    new_message = message.split('').map do |char|
        if char.match(/[a-zA-Z]/)
            ascii_offset = char.match(/[A-Z]/) ? 65:97
            char = char.ord + key
            char = (char - ascii_offset) % 26 + ascii_offset until char.between?(ascii_offset, ascii_offset+25)
            char.chr
        else 
            char
        end  
    end
    return puts new_message.join("")
end

puts caesar_cipher("Como vai?", 3)