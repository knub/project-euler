
fib :: Int -> Int
fib 1 = 1
fib 2 = 2
fib n = fib(n - 2) + fib(n - 1)

solve = sum $ filter even $ takeWhile (<4000000) $ map fib [1..]
main = putStrLn $ show $ solve
