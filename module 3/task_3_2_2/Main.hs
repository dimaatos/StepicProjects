module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ filterDisj (< 10) odd [7,8,10,11,12]
  print $ "------------------------------"
--------------------------------------------------------------------------
filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj _ _ []       = []
filterDisj p1 p2 (x:xs) | p1 x || p2 x = x : filterDisj p1 p2 xs
                        | otherwise    = filterDisj p1 p2 xs
--------------------------------------------------------------------------
