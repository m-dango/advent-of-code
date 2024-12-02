unit module AoC:ver<2024.01>;

sub columns-to-lists (Str:D $_ --> List()) is export {
    .lines».words.&[Z,];
}

sub total-distance (@a, @b --> Int:D) is export {
    (@a, @b)».sort(&[<=>]).&[Z-]».abs.sum;
}

sub similarity-score (@a, @b --> Int:D) is export {
    (@b.Bag{@a} Z* @a).sum;
}
