--main = sum $ filter (\x[1..999]

--import Prelude

--main = 1
--sum [1, 2, 3]
main = (putStrLn . show . sum . filter (\x -> (mod x 3) == 0 || (mod x 5) == 0)) [1..1000]
