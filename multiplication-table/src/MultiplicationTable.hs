module MultiplicationTable where

generateTable :: Int -> Int -> [[String]]
generateTable maxNum splitNum =
    let
        table = splitTable maxNum splitNum 2
        maxSpace = length  $ show $ maxNum * maxNum 
    in 
        map (\cols -> [showRow row maxSpace cols | row <- [1..maxNum]]) table

showFixedSpaceNum :: Int -> Int -> String
showFixedSpaceNum n maxSpace = 
    (replicate (maxSpace - (length (show n))) ' ') ++ show n

showMulti :: Int -> Int -> Int -> String
showMulti row col maxSpace = showFixedSpaceNum row maxSpace ++ "x" ++ 
    showFixedSpaceNum col maxSpace ++ "=" ++ 
    showFixedSpaceNum (row * col) maxSpace 

showRow :: Int -> Int -> [Int] -> String
showRow row maxSpace [] = []
showRow row maxSpace [col] = showMulti row col maxSpace
showRow row maxSpace (col:cols) = 
    showMulti row col maxSpace ++ " | " ++ showRow row maxSpace cols 

splitTable :: Int -> Int -> Int -> [[Int]]
splitTable maxNum splitNum start
    | (maxNum - start) <= splitNum = [[start..maxNum]]
    | otherwise = [start..(start + splitNum - 1)] : 
        splitTable maxNum splitNum (start + splitNum)
