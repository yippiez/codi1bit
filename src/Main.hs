module Main where

import Codi1Bit (nodeRandom)
import System.Random 

main :: IO ()
main = do
    g <- getStdGen
    print $ fst (nodeRandom g)
