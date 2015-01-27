

###
#
# Insertion Sort Algorithm
#
# Best Case Run Time: T(n) = O(n)
# Worst Case Run Time: T(n) = O(n^2)
#
###

insertionSort = (arr) ->

  for i in [1...arr.length]
    j = i - 1
    while j >= 0 && arr[i] < arr[j]
      swap(arr, i, j)
      i--
      j--

swap = (arr, i, j) ->
  tmp = arr[i]
  arr[i] = arr[j]
  arr[j] = tmp

###
# Testing
#
###
arr = []
for _ in [0..20]
  arr.push(Math.floor(100 * Math.random()))

console.log arr...
insertionSort(arr)
console.log arr...

