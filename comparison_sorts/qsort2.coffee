

quickSort = (A) ->
  return [] if A.length <= 0

  pivot = A[Math.floor(A.length / 2)]
  B = quickSort((i for i in A when i < pivot))
  C = (i for i in A when i == pivot)
  D = quickSort((i for i in A when i > pivot))

  return B.concat(C).concat(D)

A = []
for _ in [0..20]
  A.push(Math.round(Math.random() * 50))

console.log A...
A = quickSort(A)
console.log A...


