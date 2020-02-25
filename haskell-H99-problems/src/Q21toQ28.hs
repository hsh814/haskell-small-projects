module Q21toQ28 where

-- Insert an element at a given position into a list. 
problem21 :: a -> [a] -> Int -> [a]
problem21 x xs index = 
    take (index-1) xs ++ [x] ++ drop (index-1) xs

-- Create a list containing all integers within a given range. 
problem22 :: Int -> Int -> [Int]
problem22 start end = [start..end]

-- Extract a given number of randomly selected elements from a list. 
problem23 :: [a] -> Int -> [a]


