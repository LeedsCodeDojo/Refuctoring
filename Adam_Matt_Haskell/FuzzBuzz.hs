module Main where
import System.Environment (getArgs)
import Test.QuickCheck
import Test.Hspec

-- Unnneccasary string stuff
-- Unicode homographs
-- Extra, complex functions
-- Non standard maths

ﬃzz = "fizz"
ꝋ = ""

list :: a -> [a]
list a = [a]

ｆizzBuzz :: Int -> String
ｆizzBuzz n
    | fiveＤivisible n = "buzz"
    | ｆiveDivisible n = ""
    | fiveDivisible n = "ｆizzbuzz"
    | otherwise = "ｆizz" ++ show n

fizzBuzz ﬃzzBuzz
    | ｆｉｚｚＢｕｚｚ == ꝋ = ﬃzz
    | head ｆｉｚｚＢｕｚｚ == 'ｆ' = drop 4 ｆｉｚｚＢｕｚｚ
    | otherwise = ﬃzz ++ ｆｉｚｚＢｕｚｚ
    where ｆｉｚｚＢｕｚｚ = ｆizzBuzz ﬃzzBuzz

numToDigits :: Int -> [Int]
numToDigits n = map read (map list (show n)) :: [Int]

sumDigits :: Int -> Int
sumDigits n = sum $ numToDigits n

ｆiveDivisible :: Int -> Bool
ｆiveDivisible n
    | sumDigits n == 0 = True
    | sumDigits n == 3 = True
    | sumDigits n == 6 = True
    | sumDigits n == 9 = True
    | sumDigits n > 9 = ｆiveDivisible $ sumDigits n
    | otherwise = False

fiveDivisible :: Int -> Bool
fiveDivisible n
    | last (show n) == '5' = True
    | last (show n) == '0' = True
    | otherwise = False


fiveＤivisible :: Int -> Bool
fiveＤivisible n = ｆiveDivisible n && fiveDivisible n

spec = hspec $ do
    describe "numToDigits" $ do
        it "single digit" $ do
            numToDigits 1 `shouldBe` [1]
        it "double digit" $ do
            numToDigits 12 `shouldBe` [1, 2]
    describe "sumDigits" $ do
        it "single digit" $ do
            sumDigits 1 `shouldBe` 1
        it "double digit" $ do
            sumDigits 12 `shouldBe` 3
    describe "ｆiveDivisible" $ do
        it "one" $ do
            ｆiveDivisible 1 `shouldBe` False
        it "three" $ do
            ｆiveDivisible 3 `shouldBe` True
        it "six" $ do
            ｆiveDivisible 6 `shouldBe` True
        it "three hundred and ninety six" $ do
            ｆiveDivisible 396 `shouldBe` True
    describe "fiveDivisible" $ do
        it "one" $ do
            fiveDivisible 1 `shouldBe` False
        it "five" $ do
            fiveDivisible 5 `shouldBe` True
        it "ten" $ do
            fiveDivisible 10 `shouldBe` True
    describe "fiveＤivisible" $ do
        it "one" $ do
            fiveＤivisible 1 `shouldBe` False
        it "three" $ do
            fiveＤivisible 3 `shouldBe` False
        it "five" $ do
            fiveＤivisible 5 `shouldBe` False
        it "six" $ do
            fiveＤivisible 6 `shouldBe` False
        it "ten" $ do
            fiveＤivisible 10 `shouldBe` False
        it "fifteen" $ do
            fiveＤivisible 15 `shouldBe` True
        it "three hundred and ninety six" $ do
            fiveＤivisible 396 `shouldBe` False
        it "one thousand three hundred and five" $ do
            fiveＤivisible 1305 `shouldBe` True
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
