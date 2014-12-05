File overview
=============


fizzbuzz.py.01.good
-------------------------------

The first, good version.

    def fizzbuzz(number):
    	if number % 15 == 0:
    		return 'FizzBuzz'
    	elif number % 3 == 0:
    		return 'Fizz'
    	elif number % 5 == 0:
    		return 'Buzz'
    	else:
    		return number
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.02.stringify
-------------------------------

Turn the number into a string of dots, then count
the length of the string.

    #!/usr/bin/python3
    # Stringify the number
    def fizzbuzz(number):
    	number = '.' * number
    	if len(number) % 15 == 0:
    		return 'FizzBuzz'
    	elif len(number) % 3 == 0:
    		return 'Fizz'
    	elif len(number) % 5 == 0:
    		return 'Buzz'
    	else:
    		return len(number)
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.03.overindentation
-------------------------------

Get rid of the `elif` and overindent.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    def fizzbuzz(number):
    	number = '.' * number
    	if len(number) % 15 == 0:
    		return 'FizzBuzz'
    	else:
    		if len(number) % 3 == 0:
    			return 'Fizz'
    		else:
    			if len(number) % 5 == 0:
    				return 'Buzz'
    			else:
    				return len(number)
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.04.semicolons
-------------------------------

Add semicolons where we don't need them.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    def fizzbuzz(number):
    	number = '.' * number;
    	if len(number) % 15 == 0:
    		return 'FizzBuzz';
    	else:
    		if len(number) % 3 == 0:
    			return 'Fizz';
    		else:
    			if len(number) % 5 == 0:
    				return 'Buzz';
    			else:
    				return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.05.notabuse
-------------------------------

Because 0 is false, we can use `not`.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    def fizzbuzz(number):
    	number = '.' * number;
    	if not len(number) % 15:
    		return 'FizzBuzz';
    	else:
    		if not len(number) % 3:
    			return 'Fizz';
    		else:
    			if not len(number) % 5:
    				return 'Buzz';
    			else:
    				return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.06.magicnumbers
-------------------------------

Recurse back in using numbers that are divisable by 3 and 5 for the 15 `FizzBuzz`.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    def fizzbuzz(number):
    	number = '.' * number;
    	if not len(number) % 15:
    		return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not len(number) % 3:
    			return 'Fizz';
    		else:
    			if not len(number) % 5:
    				return 'Buzz';
    			else:
    				return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.07.asciification
-------------------------------

Why return an easily readable string when you can return ascii codes.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    def fizzbuzz(number):
    	number = '.' * number;
    	if not len(number) % 15:
    		return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not len(number) % 3:
    			return chr(70) + chr(105) + chr(122) + chr(122);
    		else:
    			if not len(number) % 5:
    				return chr(66) + chr(117) + chr(122) + chr(122);
    			else:
    				return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.08.snooze
-------------------------------

The `zz` can be made a little more complicated.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    def fizzbuzz(number):
    	number = '.' * number;
    	zzzz = chr(122) * 2
    	if not len(number) % 15:
    		return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not len(number) % 3:
    			return chr(70) + chr(105) + zzzz;
    		else:
    			if not len(number) % 5:
    				return chr(66) + chr(117) + zzzz;
    			else:
    				return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.09.cats_and_horses
-------------------------------

Change the 3,5,15 to the length of an animal themed string.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    def fizzbuzz(number):
    	number = '.' * number;
    	zzzz = chr(122) * 2
    	if not len(number) % len('a cat and horse'):
    		return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not len(number) % len('cat'):
    			return chr(70) + chr(105) + zzzz;
    		else:
    			if not len(number) % len('horse'):
    				return chr(66) + chr(117) + zzzz;
    			else:
    				return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.10.linebreaks
-------------------------------

There's still some nice linebreaks we can remove.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    def fizzbuzz(number):
    	number = '.' * number;
    	zzzz = chr(122) * 2
    	if not len(number) % len('a cat and horse'): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not len(number) % len('cat'): return chr(70) + chr(105) + zzzz;
    		else:
    			if not len(number) % len('horse'): return chr(66) + chr(117) + zzzz;
    			else: return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.11.animal_abuse
-------------------------------

Erm, a horse is now a cat and visa versa.  Use those in a format to make 15 chars.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    # Animal abuse
    def fizzbuzz(number):
    	horse = 'cat';
    	cat = 'horse';
    	number = '.' * number;
    	zzzz = chr(122) * 2
    	if not len(number) % len('a {1} and {0}'.format(horse, cat)): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not len(number) % len(horse): return chr(70) + chr(105) + zzzz;
    		else:
    			if not len(number) % len(cat): return chr(66) + chr(117) + zzzz;
    			else: return len(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.12.len_chr
-------------------------------

`len()` is now a lambda called `dog` and `bird()` is `chr()`, of course.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    # Animal abuse
    # No more len or chr
    def fizzbuzz(number):
    	dog, bird = (lambda x: len(x), lambda d: chr(d))
    	horse = 'cat';
    	cat = 'horse';
    	number = '.' * number;
    	zzzz = bird(122) * 2
    	if not dog(number) % dog('a {1} and {0}'.format(horse, cat)): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not dog(number) % dog(horse): return bird(70) + bird(105) + zzzz;
    		else:
    			if not dog(number) % dog(cat): return bird(66) + bird(117) + zzzz;
    			else: return dog(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.13.defaults
-------------------------------

Set some unused default variables.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    # Animal abuse
    # No more len or chr
    # Default args
    def fizzbuzz(number, name='Test', date='23rd November 1963'):
    	dog, bird = (lambda x: len(x), lambda d: chr(d))
    	horse = 'cat';
    	cat = 'horse';
    	number = '.' * number;
    	zzzz = bird(122) * 2
    	if not dog(number) % dog('a {1} and {0}'.format(horse, cat)): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not dog(number) % dog(horse): return bird(70) + bird(105) + zzzz;
    		else:
    			if not dog(number) % dog(cat): return bird(66) + bird(117) + zzzz;
    			else: return dog(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.14.reduce_animals
-------------------------------

Multi assignment(?) of variables.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    # Animal abuse
    # No more len or chr
    # Default args
    # Reduce animals

    def fizzbuzz(number, name='Test', date='23rd November 1963'):
    	dog, bird = (lambda x: len(x), lambda d: chr(d))
    	horse, cat = 'cat', 'horse';
    	number = '.' * number;
    	zzzz = bird(122) * 2
    	if not dog(number) % dog('a {1} and {0}'.format(horse, cat)): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not dog(number) % dog(horse): return bird(70) + bird(105) + zzzz;
    		else:
    			if not dog(number) % dog(cat): return bird(66) + bird(117) + zzzz;
    			else: return dog(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.15.ascii_animals
-------------------------------

Ascii code maths using the lengths of existing strings.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    # Animal abuse
    # No more len or chr
    # Default args
    # Reduce animals
    # ASCII animals
    def fizzbuzz(number, name='Test', date='23rd November 1963'):
    	dog, bird = (lambda x: len(x), lambda d: chr(d))
    	horse, cat = 'cat', 'horse';
    	number = '.' * number;
    	zzzz = bird(122) * 2
    	if not dog(number) % dog('a {1} and {0}'.format(horse, cat)): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not dog(number) % dog(horse): return bird(14 * dog(cat)) + bird(7 * dog(horse) * dog(cat)) + zzzz;
    		else:
    			if not dog(number) % dog(cat): return bird(22 * dog(horse)) + bird(13 * dog(horse) ** 2) + zzzz;
    			else: return dog(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.16.dangerous_defaults
-------------------------------

.. and now we actually use one of the previously unused defaults, oy vey.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    # Animal abuse
    # No more len or chr
    # Default args
    # Reduce animals
    # ASCII animals
    # Dangerous defaults
    def fizzbuzz(number, name='Test', date='23rd November 1963'):
    	dog, bird = (lambda x: len(x), lambda d: chr(d))
    	horse, cat = 'cat', 'horse';
    	number = '.' * number;
    	zzzz = bird(122) * 2
    	if not dog(number) % dog('a {1} and {0}'.format(horse, cat)): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not dog(number) % dog(horse): return bird(14 * dog(cat)) + bird(7 * dog(horse) * dog(cat)) + zzzz;
    		else:
    			if not dog(number) % dog(cat): return bird(22 * dog(horse)) + bird((dog(date) - dog(cat)) * dog(horse) ** 2) + zzzz;
    			else: return dog(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

fizzbuzz.py.17.dodgy_scoping
-------------------------------

Due to the private scope of the lambda we can reuse existing variable names.

    #!/usr/bin/python3
    # Stringify the number
    # Over-indentation
    # Semi-colons
    # Not abuse
    # Magic numbers
    # ASCIIfication
    # Snooze
    # Cats and horses
    # linebreaks
    # Animal abuse
    # No more len or chr
    # Default args
    # Reduce animals
    # ASCII animals
    # Dangerous defaults
    # Dodgy scoping
    def fizzbuzz(number, name='Test', date='23rd November 1963'):
    	dog, bird = (lambda bird: len(bird), lambda dog: chr(dog))
    	horse, cat = 'cat', 'horse';
    	number = '.' * number;
    	zzzz = bird(122) * 2
    	if not dog(number) % dog('a {1} and {0}'.format(horse, cat)): return fizzbuzz(147) + fizzbuzz(39580);
    	else:
    		if not dog(number) % dog(horse): return bird(14 * dog(cat)) + bird(7 * dog(horse) * dog(cat)) + zzzz;
    		else:
    			if not dog(number) % dog(cat): return bird(22 * dog(horse)) + bird((dog(date) - dog(cat)) * dog(horse) ** 2) + zzzz;
    			else: return dog(number);
    	
    if __name__ == '__main__':
    	for i in range(30):
    		print(fizzbuzz(i))

