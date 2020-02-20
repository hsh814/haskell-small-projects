module Lib
    ( someFunc
    , problem1
    , problem2
    , problem3
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- get last element
problem1 :: [a] -> a
problem1 [] = error "Empty list!"
problem1 [n] = n
problem1 (n:ns) = problem1 ns

-- get second last element
problem2 :: [a] -> a
problem2 [] = error "Empty list!"
problem2 [n1, n2] = n1
problem2 (n:ns) = problem2 ns

-- get K'th element of list
problem3 :: [a] -> Int -> a
problem3 (n:ns) 1 = n
problem3 (n:ns) m = problem3 ns (m-1)
