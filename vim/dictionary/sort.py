#!/usr/bin/env python

import sys
from collections import defaultdict

try:
   f = open(sys.argv[1], "r")
   dictionary = defaultdict(list)
   for line in f:
      words = line.strip().split(" ")
      for word in words:
         dictionary[word[0]].append(word)
   for char in map(chr, range(97, 123)):
      if char in dictionary:
         for word in dictionary[char]:
            print word
except IOError, err:
   print err
except IndexError:
   print "usage: sort.py wordlist"
