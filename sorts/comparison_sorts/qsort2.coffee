
###
#
# Functional Version of QuickSort
#
# Expected run-time: T(n) = O(nlog(n))
#
# Stable: No
# In-place: Yes
# Modifies original array: No
#
###
exports.quickSort = (A) ->
  return [] if A.length <= 0

  pivot = A[Math.floor(A.length / 2)]
  B = exports.quickSort((i for i in A when i < pivot))
  C = (i for i in A when i == pivot)
  D = exports.quickSort((i for i in A when i > pivot))

  return B.concat(C).concat(D)
