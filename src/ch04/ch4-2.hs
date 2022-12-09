import Prelude hiding (const)

increment n = n + 1

decrement n = n - 1

const a b = a

add n m =
  if m /= 0
    then add (increment n) (decrement m)
    else n

_replicate :: Int -> a -> [a]
_replicate n m =
  if n <= 0
    then []
    else m : _replicate (n - 1) m