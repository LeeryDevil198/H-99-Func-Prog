kthElem :: [a] -> Int -> a

kthElem [] k = error"List is empty"
kthElem list k = (list !! (k-1))
