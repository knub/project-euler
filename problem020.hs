import Data.Char (digitToInt)

factorial :: (Integral a) => a -> a
factorial n = if n == 0 then 1 else n * factorial (n - 1)


main = putStrLn $ show $ sum $ map digitToInt $ show fac100
	where
		fac100 = factorial 100
