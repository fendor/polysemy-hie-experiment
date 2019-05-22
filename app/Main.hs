
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE GADTs, FlexibleContexts, TypeOperators, DataKinds, PolyKinds #-}

{-# OPTIONS_GHC -fplugin=Polysemy.Plugin #-}

import           Polysemy
import           Polysemy.State

foo :: Member (State Int) r => Sem r ()
foo = put 10

-- echo forever
main :: IO ()
main = return ()