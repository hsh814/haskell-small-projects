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
