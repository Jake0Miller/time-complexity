# Time Complexity

## Duplicate Elements

We want to find all the numbers that appear in an array more than once.

The small array has 101 elements + 10 duplicates  
The medium array has 10,001 elements + 100 duplicates  
The large array has 1,000,001 elements + 1,000 duplicates  

You start with a working method that COUNTS the duplicates in each array. The test for the large array is skipped (it will take a very long time to run right now!) You want to make this efficient.

Think about what I did: we have 1,000,001 numbers, and for EVERY single one of them, we want to compare it to 1,000,000 OTHER numbers to check if they're the same. That's 1 million * 1 million, or 1,000,000,000,000 loops!

Rewrite this without using NESTED .each statements (.each inside another .each). You can use multiple .each statements to solve the problem (this might be a good idea!), but don't put them INSIDE each other. Looping over 1,000,000 numbers twice is only 2,000,000 loops, which is way better than 1,000,000,000,000!

Does the difference between two .each loops one after the other vs one INSIDE the other make sense? This is the crux of the problem!

In Big O Notation, the method I wrote is O(n^2). This means if we have n numbers, we do n\*n (or n^2) loops. If you can rewrite this with two .each statements back to back, that's considered O(n) instead of O(n^2). It actually uses 2n loops, but even 10n or 100n would be way better than n\*n!

After you solve this, write another version of your efficient method that finds the duplicated numbers (not just counts them!)

## Odd Entries

This time you start with a method that counts the number of duplicates in an array with a single .each statement.

Your goal is to write find_odd_entries, which finds all the elements that appear in the array an odd number of times. Can you do this with one .each statement?
