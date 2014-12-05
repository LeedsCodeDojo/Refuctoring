#!/usr/bin/python3

import unittest
import fizzbuzz

class FizzBuzzTestCase(unittest.TestCase):
	def test1(self):
		testNumber = 1
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), testNumber)

	def test2(self):
		testNumber = 2
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), testNumber)

	def test3(self):
		testNumber = 3
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), 'Fizz')

	def test6(self):
		testNumber = 6
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), 'Fizz')

	def test5(self):
		testNumber = 5
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), 'Buzz')

	def test10(self):
		testNumber = 10
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), 'Buzz')

	def test15(self):
		testNumber = 15
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), 'FizzBuzz')

	def test30(self):
		testNumber = 30
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), 'FizzBuzz')

	def test45(self):
		testNumber = 45
		self.assertEqual(fizzbuzz.fizzbuzz(testNumber), 'FizzBuzz')

if __name__ == '__main__':
	unittest.main()

