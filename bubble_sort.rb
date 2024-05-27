def bubble_sort(an_array)
    # gets the length of the array
    n = an_array.length

    (n-1).times do
        # loop through the array to compare the elements
        (0...(n-1)).each do |i|
            # compares the elements
            if an_array[i] > an_array[i+1]
                # if the first element is bigger than the next one, swap them
                an_array[i], an_array[i+1] = an_array[i+1], an_array[i]
            end
        end
    end

    an_array
end

# testing
list_of_numbers = [5,4,3,2,1]

treated_list = bubble_sort(list_of_numbers)

puts treated_list