module Main where

import MultiplicationTable

main = do
    putStrLn "Maximum number? "
    maxStr <- getLine
    putStrLn "Split interval? "
    splitStr <- getLine
    let 
        maxNum = read maxStr
        splitNum = read splitStr
    mapM_ printTable $ generateTable maxNum splitNum

printTable :: [String] -> IO ()
printTable strs = do
    mapM_ putStrLn strs
    putStr "\n"