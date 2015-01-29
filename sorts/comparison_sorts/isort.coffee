
###
#
# Insertion Sort Algorithm
#
# In-place: Yes
# Stable: Yes
# Modifies Original Array: Yes
#
# Best Case Run Time: T(n) = O(n)
# Worst Case Run Time: T(n) = O(n^2)
#
###

exports.insertionSort = (arr) ->

  for i in [1...arr.length]
    j = i - 1
    while j >= 0 && arr[i] < arr[j]
      swap(arr, i, j)
      i--
      j--

  return arr

swap = (arr, i, j) ->
  tmp = arr[i]
  arr[i] = arr[j]
  arr[j] = tmp


