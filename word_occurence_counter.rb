
# function to catch word occurences on a string
def substrings(text, dictionary)
    # creating the hash to store the occurences per word
    occurence_list = {}
    # Creating a variable to store the downcase text (case insentitive)
    turned_down_text = text.downcase

    # creating a loop to perform the occurence counting and store the results
    dictionary.each do |occurence|
        number_of_occurrences = turned_down_text.split(/\s+/).grep(occurence).length
        occurence_list[occurence] = number_of_occurrences unless number_of_occurrences == 0
    end

    # the function retrns the resulting hash
    return occurence_list
end


# small test
word_container = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
phrase = "Howdy partner, sit down! How's it going? Grab a horn and drink it up."

puts substrings(phrase, word_container)
