{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE BangPatterns #-}
--  Реализация дерева
--  Multi-way trees (aka rose trees) and forests. 
module Trees where
import Data.List (delete)
import Control.Monad(liftM2)
data Tree a = Node {
    root :: a,
    subForest ::Forest a
    } deriving (Show)
 
