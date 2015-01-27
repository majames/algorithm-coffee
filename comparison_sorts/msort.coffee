
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

###
# Merge Sort Algorithm
#
# In-place: No
# Stable: Yes
#
# Run Time: T(n) = O(n*log(n))
#
###
mergeSort = (arr) ->
  if (arr.length <= 1)
    return arr

  A = mergeSort(arr[0...arr.length/2])
  B = mergeSort(arr[arr.length/2...])
  merge(A, B)

###
# Testing my merge sort implementation
#
###
arr = []
for _ in [0...20]
  arr.push(Math.floor(100 * Math.random() + 1))

console.log arr...
arr = mergeSort(arr)
console.log arr...
