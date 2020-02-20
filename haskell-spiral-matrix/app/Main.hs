import SpiralMatrix

main = do
    putStrLn "Input n: "
    input <- getLine
    let 
        n = read input
        len = length $ show $ n * n
        matrix = spiral n
    mapM_ (printList len) matrix

printList :: (Show a) => Int -> [a] -> IO ()
printList n [] = putStr "\n"
printList n (x:xs) = do
    let len = length (show x)
    putStr $ (show x) ++ (replicate (n - len + 1) ' ')
    printList n xs
