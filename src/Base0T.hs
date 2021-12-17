{- | A Prelude replacement, collecting all my favourite imports from
     the base system and external libraries; including testing base. -}

module Base0T
  ( module Base0

    ------------------------------------
    --             tasty              --
    ------------------------------------

  , module Test.Tasty

    ------------------------------------
    --          tasty-hunit           --
    ------------------------------------

  , module Test.Tasty.HUnit
)
where

import Base0

-- tasty -------------------------------

import Test.Tasty  ( TestName, TestTree, testGroup )

-- tasty-hunit -------------------------

import Test.Tasty.HUnit  ( (@=?), testCase )

-- that's all, folks! ----------------------------------------------------------
