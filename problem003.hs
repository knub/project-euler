import Data.List

-- Checks if a number is prime.
isPrime :: (Integral a) => a -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime n = all (\x -> mod n x /= 0) $ numbersToTest n

-- All potential factors to check for prime-ness of n.
numbersToTest :: (Integral a) => a -> [a]
numbersToTest n = reverse [2 .. upperBound]
	where
		upperBound = upperBoundToTest n

-- Upper bound for a potential factor for number n to check for.
upperBoundToTest :: (Integral a) => a -> a
upperBoundToTest = floor . sqrt . fromIntegral

-- Returns the highest prime factor of a given number n, assuming n is not prime.
highestPrimeFactor :: (Integral a) => a -> Maybe a
highestPrimeFactor n = find (\x -> mod n x == 0 && isPrime x) $ numbersToTest n

output :: (Integral a, Show a) => Maybe a -> String
output (Just a) = show a
output (Nothing) = "No highest prime Factor"

main = putStrLn $ output $ highestPrimeFactor 600851475143
