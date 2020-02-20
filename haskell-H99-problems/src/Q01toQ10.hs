module Q01toQ10 where

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

-- Find the number of elements of a list
problem4 :: [a] -> Int
problem4 xs = count xs 0

count :: [a] -> Int -> Int
count [] n = n
count (x:xs) n = count xs (n+1)

-- reverse list
problem5 :: [a] -> [a]
problem5 [] = []
problem5 (x:xs) = (problem5 xs) ++ [x] 

-- Find out whether a list is a palindrome.
problem6 :: (Eq a) => [a] -> Bool
problem6 list = list == (reverse list)

-- Flatten a nested list
data NestedList a = Elem a | List [NestedList a]

problem7 :: NestedList a -> [a]
problem7 (Elem e) = [e]
problem7 (List (nl:nls)) = problem7 nl ++ problem7 (List nls)
problem7 (List []) = []


-- Eliminate consecutive duplicates of list elements.
problem8 :: (Eq a) => [a] -> [a]
problem8 [] = []
problem8 [x] = [x]
problem8 (x1:x2:xs) =
    if x1 == x2
        then problem8 (x2:xs)
        else x1 : problem8 (x2:xs) 


-- Pack consecutive duplicates of list elements into sublists. 
takeElem :: (Eq a) => a -> [a] -> ([a], [a])
takeElem x [] = ([], [])
takeElem x (x1:xs) = if x == x1 
    then (x1 : fst (takeElem x xs), xs)
    else ([], xs)

problem9 :: (Eq a) => [a] -> [[a]]
problem9 [] = []
problem9 [x] = [[x]]
problem9 (x:xs) =
    let 
        (newGroup, leftList) = takeElem x xs
    in 
        newGroup : (problem9 leftList)






