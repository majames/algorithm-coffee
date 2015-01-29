
###
# Counting sort algorithm
#
###


###
# A - the array of non-negative integers to be sorted
#
# In-place: No
# Stable: Yes
# Modifies original array: No
#
# Running Time: T(n) = O(max + n)
#   n - length of the array A
#   max - integer in array with the largest value
###
exports.countSort = (A) ->
  # Find the maximum and minimum values in the array
  min = Math.min.apply @, A
  max = Math.max.apply @, A

  # Throw an exception if there are numbers in the array which are negative
  if min < 0
    throw 'Negative number in the array'

  # Throw an exception if count sort will be asymptotically slower than
  # a basic comparison sort based algorithm
  if max > A.length * Math.log(A.length) / Math.log(2)
    throw 'Use a different sorting algorithm'

  # Throw an error if there are non-integer values in the array
  for valu in A
    if Math.floor(valu) != valu
      throw 'There are numbers in the array which are NOT integers!'

  # initialise the counts in C to zero
  B = (null for _ in [0...A.length])
  C = (0 for _ in [0..max])

  # Sum the number of occurances of each value in A
  for valu in A
    C[valu] += 1

  # Keep running sum of numbers before occurance of number i
  for i in [1...C.length]
    C[i] = C[i] + C[i-1]

  # Fill the sorted array B by itterating through array A backwards
  for valu in A.slice(0).reverse()
    B[C[valu] - 1] = valu
    C[valu] = C[valu] - 1

  return B



