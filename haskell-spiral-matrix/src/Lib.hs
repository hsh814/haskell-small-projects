module Lib
    ( someFunc
    ) where

import Data.List 

someFunc :: IO ()
someFunc = putStrLn "someFunc"

legacyMain = do
    --args <- getArgs
    putStrLn "input n: "
    input <- getLine
    let 
        n :: Int
        n = read $ input
        matrix = spiral n n
        list = [[(filterRow r matrix)] | r <- [1..n]]
    mapM_ printList list

data Direction = Right' | Down | Left' | Up
    deriving (Show, Eq)

spiral :: Int -> Int -> [(Int, Int, Int, Direction)]
spiral n 1 = [(1, 1, 1, Right')]
spiral n m = 
    let
        (_, col, row, direction) = head $ spiral n (m-1) 
    in 
        case direction of
            Right' -> if col == (n-1) 
                then (m, col + 1, row, Down) : spiral n (m-1)
                else (m, col + 1, row, Right') : spiral n (m-1)
            Down -> if row == (n-1)
                then (m, col, row + 1, Left') : spiral n (m-1)
                else (m, col, row+1, Down) : spiral n (m-1)
            Left' -> if col == 2
                then (m, col - 1, row, Up) : spiral n (m-1)
                else (m, col - 1, row, Left') : spiral n (m-1)
            Up -> if row == 2
                then (m, col, row - 1, Right') : spiral n (m-1)
                else (m, col, row - 1, Up) : spiral n (m-1)

printList :: (Show a) => [a] -> IO ()
printList [] = putStr "\n"
printList (x:xs) = do
    putStr $ show x ++ " "
    printList xs

filterRow :: Int -> [(Int, Int, Int, Direction)] -> [Int]
filterRow row matrix = 
    let
        row1 = filter (\(num, col, row2, direction) -> row == row2) matrix 
        row2 = sortOn (\(_, col, _, _) -> col) row1
    in 
        onlyNums row2

onlyNums :: [(Int, Int, Int, Direction)] -> [Int]
onlyNums [] = []
onlyNums ((num, _, _, _) : ls) = num : onlyNums ls 