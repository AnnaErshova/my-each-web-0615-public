# Now that you know how the yield method works, try to write your
# own version of the "each" method without using the each method
# provided by Ruby. As in, try to build "my_each" using only the 
# while keyword.

# Think about what's going on in "each". It's looping through
# the elements of an array and yielding you the individual
# elements one at a time to the block. What has to happen
# to do this?

# Note: All Ruby methods accept blocks by default.

# Write your code in "my_each.rb".

def my_each(words)
  counter = 0
  while counter < words.length
    yield(words[counter])
    # yields to a block ; anything that is passed on to it is returned back
    counter +=1
  end
  words
end 

# this actually returns the original array
# defensive programming
# real-life example of this is rspec

# yield is a way of abstracting blocks
# is one has three numbers, different users can do different things to those three numbers, 
# like add them up, mulitple them, square them etc
# yield allows one to go through n elements in an array one at a time
# users later on can choose what to do with those elements
# yielding = deferring execution
# blocks are for injecting a different procedure into a known sets of instructions