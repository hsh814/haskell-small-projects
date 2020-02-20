# haskell-spiral-matrix

Implementation of spiral matrix in haskell.

- 달팽이 배열 하스켈 구현

## What is spiral matrix?

ex)

```
input> 5

output>
1 2 3 4 5
16 17 18 19 6
15 24 25 20 7
14 23 22 21 8
13 12 11 10 9
```

## Implementation

![calculation](./calculation.jpg)

- [source code](./src/SpiralMatrix.hs)

output:

```
*Main> spiral 5
[[0,1,2,3,4],[15,20,21,22,5],[14,31,32,23,6],[13,30,29,24,7],[12,11,10,9,8]]
```