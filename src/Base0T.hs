{- | A Prelude replacement, collecting all my favourite imports from
     the base system and external libraries; including testing base. -}

module Base0T
  ( module Base0

    ------------------------------------
    --             tasty              --
    ------------------------------------

    -- Test.Tasty
  ,  TestTree, testGroup

    ------------------------------------
    --          tasty-hunit           --
    ------------------------------------

    -- Test.Tasty.HUnit
  ,  (@=?), testCase
)
where

import Base0

-- tasty -------------------------------

import Test.Tasty  ( TestTree, testGroup )

-- tasty-hunit -------------------------

import Test.Tasty.HUnit  ( (@=?), testCase )

-- that's all, folks! ----------------------------------------------------------
