module Q11toQ20 where

-- Modified run-length encoding. 
data Duplicate a = Single a | Multiple Int a deriving (Show)

countDup :: (Eq a) => a -> [a] -> Int
countDup x [] = 0
countDup x (n:ns) = if x == n
    then 1 + countDup x ns
    else 0

problem11 :: (Eq a) => [a] -> [Duplicate a]
problem11 [] = []
problem11 [x] = [Single x]
problem11 xs =
    let
        num = countDup (head xs) xs
        newGroup = drop num xs
    in if num == 1
        then Single (head xs) : problem11 newGroup
        else Multiple num (head xs) : problem11 newGroup

-- Decode a run-length encoded list.
decode :: Duplicate a -> [a]
decode (Single x) = [x]
decode (Multiple n x) = replicate n x

problem12 :: (Eq a) => [Duplicate a] -> [a]
problem12 ds = foldl (\x y -> x ++ decode y) [] ds 

-- Duplicate the elements of a list.
problem14 :: [a] -> [a]
problem14 ds = foldl (\x y -> x ++ replicate 2 y) [] ds

-- Replicate the elements of a list given number of times
problem15 :: [a] -> Int -> [a]
problem15 ds n = foldl (\x y -> x ++ replicate n y) [] ds

-- Drop every N'th element from a list. 
problem16 :: [a] -> Int -> [a]
problem16 [] _ = []
problem16 ns n = dropEvery ns n len
    where
        len = length ns
        dropEvery ns n len = if n >= len
            then take (n - 1) ns ++ (drop n ns)
            else take (n - 1) ns ++ (dropEvery (drop n ns) n (len - n))

-- Split a list into two parts; the length of the first part is given. 
problem17 :: [a] -> Int -> ([a], [a])
problem17 [] _ = ([], [])
problem17 ns len = (take len ns, drop len ns)

    
-- Extract a slice from a list. 
problem18 :: [a] -> Int -> Int -> [a]
problem18 xs start end = take (end - start + 1) $ drop (start-1) xs


-- Rotate a list N places to the left.
problem19 :: [a] -> Int -> [a]
problem19 xs n = drop n xs ++ (take n xs)


-- Remove the K'th element from a list. 
problem20 :: Int -> [a] -> (a, [a])
problem20 n xs = (xs !! (n-1), take (n-1) xs ++ (drop n xs))




