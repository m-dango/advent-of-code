#!/usr/bin/env raku

given lines».words.&[Z,].List {
    say 'Part 1: ' ~ $_».sort(&[<=>]).&[Z-]».abs.sum;
    say 'Part 2: ' ~ .&({.[1].Bag{.[0]} Z* .[0]}).sum;
}
