module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "------------------------------"
  print $ ssucc True
  print $ spred False  
  print $ "------------------------------"
--------------------------------------------------------------------------
class (Enum a, Bounded a, Eq a) => SafeEnum a where
  ssucc :: a -> a
  ssucc x | x == maxBound = minBound
          | otherwise     = succ x
  spred :: a -> a
  spred x | x == minBound = maxBound
          | otherwise     = pred x
--------------------------------------------------------------------------
instance SafeEnum Bool where
--------------------------------------------------------------------------
