
def countPatterInWord(pattern, word) 
    count = 0
    
    for start in 0..(word.length - pattern.length)
        # puts "searching from #{start}"
        everything_matches = true
        for pos in 0...pattern.length
            # print "matching #{word[start + pos]} and #{pattern[pos]}  "
            if word[start + pos] != pattern[pos]
                everything_matches = false
                # puts "entered"
                break
            end
        end

        if everything_matches
            count += 1
        end
        # puts count

    end
    return count
end


def substrings(main_string, dictionary) 
    main_string.downcase!
    main_words = main_string.split

    pattern_count = Hash.new
    for pattern in dictionary
        pattern.downcase!
        count = 0

        for word in main_words
            # puts "searching #{pattern} in #{word}"
            count += countPatterInWord(pattern, word)
            # puts count
        end

        if count > 0 
            pattern_count[pattern] = count
        end
    end

    return pattern_count
end





dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)