module SpiralMatrix where

spiral :: Int -> [[Int]]
spiral 1 = [[1]]
spiral n = [(generateRow n m) | m <- [0..n-1]]

margin :: Int -> (Int, Int) -> Int
margin n (i, j) = minimum [i, j, n - i - 1, n - j - 1]

spiralValue :: Int -> (Int, Int) -> Int
spiralValue n (i, j) =
    let 
        m = margin n (i, j)
        start = 4 * (n * m - m * m)
    in
        if i <= j
            then start + (i + j - 2 * m)
            else start + 4 * (n - 1) - (i + j + 2 * m)

generateRow :: Int -> Int -> [Int]
generateRow n m = [(spiralValue n (m, k)) | k <- [0..n-1]]