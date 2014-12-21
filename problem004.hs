

isPalindrome :: (Integral a, Show a) => a -> Bool
isPalindrome n = digits == reverse digits
	where digits = show n

threeDigitNumbers = [100 .. 999]
threeDigitNumberCombinations = [ [x, y] | x <- threeDigitNumbers, y <- threeDigitNumbers, x <= y]

largestPalindromeProduct :: Integer
largestPalindromeProduct = maximum $ filter isPalindrome $ map product threeDigitNumberCombinations

main = putStrLn $ show $ largestPalindromeProduct