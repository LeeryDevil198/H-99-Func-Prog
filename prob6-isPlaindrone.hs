isPlaindrone :: Eq a => [a] -> Bool
isPlaindrone list = (list == reverse list)


