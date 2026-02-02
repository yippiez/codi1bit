{-# LANGUAGE BangPatterns #-}

module Codi1Bit where

import System.Random
import Data.Word
-- import Data.Bits
import qualified Data.Vector.Unboxed as U

data NodeStates = Blank | Body | Axon | Dendrite 
    deriving (Show, Eq, Enum, Bounded)
data NodeDirection = North | East | South | West 
    deriving (Show, Eq, Enum, Bounded)
newtype NodeValue = NodeValue Word16
    deriving (Show, Eq)

{-| The `Node` type holds the envoded information of
a single cell in a 1-bit Codi simulation.

Bit Layout:
| 31 - 30 | 29 - 28 | 27 - 12 | 11 - 0 |
| State   | Direction| Value  | Unused |
-}
newtype Node = Node Word32
    deriving (Show, Eq)

nodeRandom :: RandomGen g => g -> (Node, g)
nodeRandom gen = let (w, gen') = genWord32 gen in (Node w, gen')

data Grid = Grid
    { gridData :: !(U.Vector Node)
    , gridWidth :: !Int
    , gridHeight :: !Int
    } 

{-| Initialize a grid with random nodes.-}
gridRandom :: g -> Int -> Int -> (Grid, g)
gridRandom seed width height = undefined

gridIndex :: Grid -> Int -> Int -> Int
gridIndex grid x y = y * gridWidth grid + x

-- gridGrowStep :: Grid -> Grid
-- gridGrowStep = undefined
--
-- gridEvalStep :: Grid -> Grid
-- gridEvalStep = undefined
