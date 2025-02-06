import unittest
from fizzbuzz.main import fizzbuzz


class TestFizzBuzz(unittest.TestCase) :
    def test_fizz(self):
        multiples_of_3 = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39]
        for num in multiples_of_3:
            with self.subTest(num=num):
                self.assertEqual(fizzbuzz(num), "Fizz")

    def test_buzz(self):
        multiples_of_5 = [5, 10, 20, 25, 35, 40, 50, 55, 65, 70, 80]
        for num in multiples_of_5:
            with self.subTest(num=num):
                self.assertEqual(fizzbuzz(num), "Buzz")

    def test_fizzbuzz(self):
        multiples_of_15 = [15, 30, 45, 60, 75, 90]
        for num in multiples_of_15:
            with self.subTest(num=num):
                self.assertEqual(fizzbuzz(num), "FizzBuzz")

    def test_numbers(self):
        non_multiples = [1, 2, 4, 7, 8, 11, 13, 14, 16, 17, 19, 22]
        for num in non_multiples:
            with self.subTest(num=num):
                self.assertEqual(fizzbuzz(num), str(num))


if __name__ == "__main__":
    unittest.main()


