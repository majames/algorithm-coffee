

###
# Selection Sort Algorithm
#
# Run Time: T(n) = O(n^2)
#
###


selectionSort = (A) ->
  for i in [A.length..1] by -1
    maxIndex = 0
    for j in [0...i]
      if A[maxIndex] < A[j]
        maxIndex = j

    swap(A, maxIndex, j-1)

swap = (A, i, j) ->
  tmp = A[i]
  A[i] = A[j]
  A[j] = tmp


arr = []

for _ in [0..20]
  arr.push(Math.floor(Math.random() * 20))

console.log arr...
selectionSort(arr)
console.log arr...
