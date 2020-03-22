nestDuplicates :: Eq a => [a] -> [[a]]

nestDuplicates [] = []

nestDuplicates (x:xs) = let (first, remaining) = span (== x) xs

              in (x:first) : nestDuplicates remaining


count :: Eq a => [a] -> [(Int,a)]

count xs = map (\ll -> (length ll, head ll)) (nestDuplicates xs)
