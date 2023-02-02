def is_lower?(ascii_val) 
    if(ascii_val >= 97 && ascii_val <= 122)
      return true
    end
  end
  
  def is_upper?(ascii_val) 
    if(ascii_val >= 65 && ascii_val <= 90)
      return true
    end
  end
  
  def caesar_cipher(sentence, shift_factor)
    shift_factor %= 26
    for i in 0...sentence.length 
      ascii_val = sentence[i].ord
      if(is_lower?(ascii_val))
        ascii_val += shift_factor
        if(ascii_val > 122)
          ascii_val = 97 + ascii_val - 122 - 1
        end
        sentence[i] = ascii_val.chr
        
      elsif(is_upper?(ascii_val))
        ascii_val += shift_factor
        if(ascii_val > 90)
          ascii_val = 65 + ascii_val - 90 - 1
        end
        sentence[i] = ascii_val.chr
      end
      
    end
    puts sentence
  end
  
  caesar_cipher("What a strinz!", 5)