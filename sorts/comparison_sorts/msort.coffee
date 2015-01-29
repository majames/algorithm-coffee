###
# Merge Sort Algorithm
#
# In-place: No
# Stable: Yes
# Modifies original array: No
#
# Run Time: T(n) = O(n*log(n))
#
###
exports.mergeSort = (arr) ->
  if (arr.length <= 1)
    return arr

  A = mergeSort(arr[0...arr.length/2])
  B = mergeSort(arr[arr.length/2...])
  merge(A, B)

###
# Merge sub-routine used within merge sort.
#
# T(n) = O(n)
#
###
merge = (A, B) ->
  C = [] # temporary storage dependent on input size  (merge sort is NOT in place)
  i = 0
  j = 0

  while(i < A.length && j < B.length)
    if A[i] <= B[j]
      C.push(A[i])
      i++
    else
      C.push(B[j])
      j++

  for valu in A[i...]
    C.push(valu)

  for valu in B[j...]
    C.push(valu)

  return C


