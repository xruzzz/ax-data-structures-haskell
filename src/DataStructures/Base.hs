{-# LANGUAGE BangPatterns #-}
-- |
--  Этот файл был создан, чтобы реализовать drop и dropWhile на foldr foldl
--
module Base where

import Control.Monad(liftM2)

data Color = 
    Red
  | Black 
  deriving (Eq)

leftmostV :: a -> RBTree a -> a
leftmostV v Leaf = v
leftmostV _ (Node _ vl l _) = leftmostV vl l

data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord) 

instance Functor List where  
    fmap f Empty = Empty
    fmap f (Cons x xs) = Cons (f x) (fmap f xs)

instance Functor Map where  
    fmap f Empty = Empty
    fmap f (Map x xs) = Map (f x) (fmap f xs)
