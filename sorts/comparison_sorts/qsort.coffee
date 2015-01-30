
###
#
# Quick Sort Algorithm
#
# In-place: Yes
# Stable: No
# Modifies Original Array: Yes
#
# Expected run-time: O(n*log(n))
# Worst case run-time: O(n^2)
#
###

exports.quickSort = (A) ->
  quickSortAux(A, 0, A.length)

###
#
# A[start_index .. end_index - 1] are valid array entries
#
###
quickSortAux = (A, start_index, end_index) ->
  if start_index >= end_index
    return

  pivot_index = partition(A, start_index, end_index)
  quickSortAux(A, start_index, pivot_index)
  quickSortAux(A, pivot_index + 1, end_index)

  return A

###
# Splits the array A into 3 sub-sections:
#  1. elements less than the pivot
#  2. a section containing just the pivot element
#  3. elements greater than or equal to the pivot
###
partition = (A, start_index, end_index) ->
  # choose a pivot and move it to the front of the array
  pivot_index = Math.floor((start_index + end_index) / 2)
  pivot = A[pivot_index]
  swap(A, pivot_index, start_index)

  # j is the final index of the section of the array less
  # than the pivot
  j = start_index
  for i in [start_index + 1 ... end_index]
    if A[i] < pivot
      j++
      swap(A, i, j)

  # swap pivot into its final position
  swap(A, start_index, j)

  # the final pivot position
  return j

###
#
# Function swaps two values within the array A
#
###
swap = (A, i, j) ->
  tmp = A[i]
  A[i] = A[j]
  A[j] = tmp

