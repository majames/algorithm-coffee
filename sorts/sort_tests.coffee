
###
#
#
# Testing of the sorting algorithms
#
#
###

# Comparison based sorting algorithms
isort  = require('./comparison_sorts/isort.coffee')
msort  = require('./comparison_sorts/msort.coffee')
qsort  = require('./comparison_sorts/qsort.coffee')
qsort2 = require('./comparison_sorts/qsort2.coffee')
ssort  = require('./comparison_sorts/ssort.coffee')

# Linear sorting algorithms
count_sort = require('./linear_sorts/count_sort.coffee')
radix_sort = require('./linear_sorts/radix_sort.coffee')

###
#
# Returns true if array A is sorted, else returns false
#
###
isSorted = (A, sortName) ->
  for i in [1...A.length]
    if A[i-1] > A[i]
      console.log "  #{sortName} Fail!\n"
      return false

  console.log "  #{sortName} Success!\n"
  return true

###
#
# Function for testing a single sort
#
###
testSort = (sortFunc, A, sortName) ->
  console.log "Testing #{sortName}:"

  B = A.slice()
  B = sortFunc(B)

  # check whether the sort succeeded
  isSorted(B, sortName)

  # print the first 20 elements of the arrays before and after sorting
  console.log "  Before: #{A[0...20]}..."
  console.log "  After:  #{B[0...20]}...\n"


###
#
# Run tests on the sorting algorithms
#
###

TEST_SIZE = 1000

# set up the arrays for testing
arr = []
for i in [0...TEST_SIZE]
  arr.push(Math.floor(Math.random() * TEST_SIZE))

# test the sorting algorithms
testSort(ssort.selectionSort, arr, 'Selection Sort')

testSort(isort.insertionSort, arr, 'Insertion Sort')

testSort(msort.mergeSort, arr, 'Merge Sort')

#testSort(qsort.quickSort, arr, 'Quick Sort')

testSort(qsort2.quickSort, arr, 'Functional Quick Sort')

testSort(count_sort.countSort, arr, 'Count Sort')


