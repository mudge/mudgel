# Mudgel [![Build Status](https://travis-ci.org/mudge/mudgel.svg?branch=master)](http://travis-ci.org/mudge/mudgel)

    firstly, let i be 1 followed by while something known as i is less than
    101, firstly, if 0 is equal to the remainder after dividing something
    known as i and 15 then print "FizzBuzz" otherwise if 0 is equal to the
    remainder after dividing something known as i and 5 then print "Buzz"
    otherwise if 0 is equal to the remainder after dividing something known as
    i and 3 then print "Fizz" otherwise print something known as i followed by
    let i be one more than something known as i

An experiment in implementing a (rather silly) programming language that
compiles to different backends (specifically, Ruby, JavaScript and Clojure) in
order to explore the FizzBuzz problem.

## Usage

```console
$ bin/mudgel --ruby fizzbuzz.mudgel > fizzbuzz.rb
$ bin/mudgel --javascript fizzbuzz.mudgel > fizzbuzz.js
$ bin/mudgel --clojure fizzbuzz.mudgel > fizzbuzz.clj
$ ruby fizzbuzz.rb
$ node fizzbuzz.js
$ lein exec fizzbuzz.clj
```

## Acknowledgements

This owes a huge amount to [Tom Stuart's example code for "Understanding
Computation"](https://github.com/tomstuart/computationbook), specifically the
section on denotational semantics.
