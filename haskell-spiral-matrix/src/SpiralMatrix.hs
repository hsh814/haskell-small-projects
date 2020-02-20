module SpiralMatrix where

spiral :: Int -> [[Int]]
spiral 1 = [[1]]
spiral n = [(generateRow n m) | m <- [0..n-1]]
--spiral n = 

margin :: Int -> (Int, Int) -> (Int, Int)
margin n (i, j) =
    let m = minimum [i, j, n - i - 1, n - j - 1]
    in if i <= j
        then (m, i + m + j + m)
        else (m, i - m + j - m)

spiralValue :: Int -> (Int, Int) -> Int
spiralValue n (i, j) =
    let 
        (m, k) = margin n (i, j)
        start = 4 * (n * m - m * m)
    in
        if i <= j
            then start + k
            else start + 4 * (n - 1) - k

generateRow :: Int -> Int -> [Int]
generateRow n m = [(spiralValue n (m, k)) | k <- [0..n-1]]