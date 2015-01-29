
###
# Selection Sort Algorithm
#
# In-place: Yes
# Stable: Yes
#
# Run Time: T(n) = O(n^2)
#
###
exports.selectionSort = (A) ->
  for i in [A.length..1] by -1
    maxIndex = 0
    for j in [0...i]
      if A[maxIndex] <= A[j]
        maxIndex = j

    swap(A, maxIndex, j-1)

  return A

###
#
# Swaps two values in the array A.
#
# Swapped values are indexed by i and j.
#
###
swap = (A, i, j) ->
  tmp = A[i]
  A[i] = A[j]
  A[j] = tmp

