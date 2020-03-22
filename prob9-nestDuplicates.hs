nestDuplicates :: Eq a => [a] -> [[a]]

nestDuplicates [] = []

nestDuplicates (x:xs) = let (first, remaining) = span (== x) xs

              in (x:first) : nestDuplicates remaining
