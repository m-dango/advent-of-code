#!/usr/bin/env raku

use AoC:ver<2024.01>;

sub MAIN (Str:D $input = $*IN.slurp) {
    given $input.&columns-to-lists {
        say 'Part 1: ' ~ total-distance(.[0], .[1]);
        say 'Part 2: ' ~ similarity-score(.[0], .[1]);
    }
}
