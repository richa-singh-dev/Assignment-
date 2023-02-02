def bubble_sort(num_arr)


    for itr in 1...num_arr.length
        swapped = false
        for pos in 0...num_arr.length-itr
            if num_arr[pos] > num_arr[pos + 1]
                num_arr[pos], num_arr[pos+1] = num_arr[pos+1], num_arr[pos]
                swapped = true
            end
        end

        if swapped == false
            break
        end
    end
     return num_arr
end

puts bubble_sort([4,3,78,2,0,2])