-- |
-- This is the main entry point into our logic, with everything already nicely
-- in the world of Haskell, i.e. no JS dependencies.
module Entry where

import Types
import qualified Data.Map as M

incredibleLogic :: Context -> Task -> Proof -> Either String Analysis
incredibleLogic ctxt task prf = return $ Analysis
    { connectionPropositions = M.empty
    , unsolvedGoals = [ConclusionPort n | (n,_) <- zip [1..] concs]
    , qed = False
    }
  where
    concs = tConclusions task
 

