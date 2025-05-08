module SpecHook
  ( hook
  ) where

import Prelude

import Test.Hspec
import Test.Hspec.JUnit.Formatter.Env as Formatter

hook :: Spec -> Spec
hook = Formatter.whenEnabled Formatter.add . parallel
