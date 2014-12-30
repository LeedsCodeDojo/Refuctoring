module Main where
import System.Environment (getArgs)
import Test.QuickCheck
import Test.Hspec

fizzBuzz :: Int -> String
fizzBuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "fizzbuzz"
    | n `mod` 3 == 0 = "fizz"
    | n `mod` 5 == 0 = "buzz"
    | otherwise = show n

-- As a (much less readable) list comprehension, taking a list of ints
-- fizzBuzz :: [Int] -> [String]
-- fizzBuzz xs = [if (x `mod` 3 == 0) && (x `mod` 5 == 0) then "FizzBuzz" else if x `mod` 3 == 0 then "Fizz" else if x `mod` 5 == 0 then "Buzz" else show x | x <- xs]

spec = hspec $ do
    describe "fizzBuzz" $ do
        it "counts to 2" $ do
            fizzBuzz 1 `shouldBe` "1"
            fizzBuzz 2 `shouldBe` "2"
        it "counts to 3" $ do
            fizzBuzz 3 `shouldBe` "fizz"
        it "counts to 5" $ do
            fizzBuzz 5 `shouldBe` "buzz"
        it "counts to 6" $ do
            fizzBuzz 6 `shouldBe` "fizz"
        it "counts to 10" $ do
            fizzBuzz 10 `shouldBe` "buzz"
        it "counts to 15" $ do
            fizzBuzz 15 `shouldBe` "fizzbuzz"
        it "counts to 0" $ do
            fizzBuzz 0 `shouldBe` "fizzbuzz"

main = do
    args <- getArgs
    case args of
        [n] -> putStrLn $ fizzBuzz (read n :: Int)
        _ -> spec
