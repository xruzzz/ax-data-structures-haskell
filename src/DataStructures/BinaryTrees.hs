{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE BangPatterns #-}
--  Реализация двоичного дерева
--
module BinaryTrees where
import Data.List (delete)
import Control.Monad(liftM2)
data Node a =  NodeConstr {
					key :: Int,
					value :: a
--					Left,
--					Right :: Node,
					} deriving (Show)
 