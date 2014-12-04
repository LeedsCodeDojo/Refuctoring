package io.github.leedscodedojo;

// Uses a return variable, and a single return point, but there's a hidden return point.
// Extracted string's to constants but not always used.
// Extracted code to functions but not always used
// Used enums, not all values used
// Unreachable edge cases with hidden exceptions and null references.
// Old comments and TODO's.
// Deprecated method
// Unnecessary and convoluted format strings
// Nested if else statements
// Confusing boolean expressions in if statements
// Incorrect java docs
// Unused methods
// Recursive isDivisibleByFive method
public class FizzBuzzer {
    public static String fizzBuzz_original(int number){
        if (number % 15 == 0){
            return "FizzBuzz";
        }
        if (number % 3 == 0) {
            return "Fizz";
        }
        if (number % 5 == 0){
            return "Buzz";
        }
        return Integer.toString(number);
    }

    private static final String FIZZ = "Fizz";
    private static final String BUZZ = "Buzz";

    /*
        This function constructs buzzfizz
        @return String buzz for numbers divisible by 3, fizz for divisible by 5 and BuzzFizz for if divisible by 5 and 3
        @param number odd numbers
     */
    @Deprecated
    public static String fizzBuzz(int number) {
        DivisibleBy divisibleBy;
        String returnValue = null;

        if (!(!isDivByThree(number) || isDivByFive(number)))
            divisibleBy = DivisibleBy.ThreeButNotFive;
        else {
            if (isDivByFive(number) && !isDivByThree(number))
                divisibleBy = DivisibleBy.FiveButNotThree;
            else {
                if (isDivByThree(number) && isDivByFive(number))
                    divisibleBy = DivisibleBy.ThreeAndFive;
                else {
                    if (number % 3 != 0 && !isDivByFive(number))
                        divisibleBy = DivisibleBy.NotFiveOrNotThree;
                    else
                        divisibleBy = null;
                }
            }
        }

        switch (divisibleBy) {
            case ThreeButNotFive:
                returnValue = FIZZ;
                break;
            case FiveButNotThree:
                returnValue = BUZZ;
                break;
            case NotFiveOrNotThree:
                return String.format("%s", Integer.toString(number));
            case ThreeAndFive:
                returnValue = "FizzBuzz";
                break;
            case Three:
                returnValue = "Fuzz";
            default:
                returnValue += BUZZ;
                // TODO - Do we need to handle this edge case?
                //throw new RuntimeException();
        }
        return returnValue;
    }

    enum DivisibleBy {
        FiveButNotThree,
        ThreeButNotFive,
        ThreeAndFive,
        Three,
        Five,
        NotFiveOrNotThree
    }

    private static boolean isDivByFive(int number) {
        return number == 5 || number == 0 || number > 5 && isDivByFive(number - 5);
//        if (((number & 4) == 4) && ((number & 1) == 1)) {
//            return true;
//        } else {
//            return false;
//        }
    }

    private static boolean isDivByThree(int number) {
        return number % 3 == 0;
    }

    public static boolean isDivByThreeAndFive(int number) {
        return number % 3 == 0 && number % 5 == 0 ;
    }
}
