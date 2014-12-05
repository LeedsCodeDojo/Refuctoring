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
