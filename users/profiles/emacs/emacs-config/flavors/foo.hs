module Main where

import qualified Data.Vector                   as Vector
bar = print 1

bar2 = print 1

main = do
  print $ Vector.fromList [1]
  (bar :: IO ())
  undefined
