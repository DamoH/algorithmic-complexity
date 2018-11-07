# algorithmic-complexity


This is the "Ruby" (in last.rb file) code for the testing how efficient programmes are and, in this initial case, timing code and the following library functions :

- last
- reverse
- shuffle
- sort (using 'shuffle' first so as not to bias the results, as per the course instructions).

You just have to amend the code in the for loop in lines 10 & 12 to be able to test the additional functions.

I have attached some of my spreadsheet results and a chart plotting them (this is a Mac "numbers" attachment). You will note that on one mof my initial charts the x-axis is not totally linear and is split into 0-1000 (100 steps) and 1000 to 5000 (with 1000 steps).... so in effect this is 2 adjoined charts with different ranges. However, on additional attached charts I have corrected this.

Once I was plotting arrays with elements ranging from 50,000 to 1,000,000 did I start noticing curvature of the graph plotting... depending on the efficiency (or lack of) my "own" algorithms ie ownShuffle.rb

I also had problems with the Ruby 'Time.now.nsec' (for registering nanoseconds), as at higher array element volumes it started registering declining and then -ve numbers. This was due to "only" the nanoseconds part of the time stamp being registered (discovered after reading the Ruby docs). This seemed to be fixed my switching to a 'Time.now.to_f' method chain.


Notes
-----
These plotted results were initially run from repl.it which didn't seem to be able to cope with larger data arrays (Mac terminal/irb was rounding all results to the nearest 1000), but I switched to irb when the rounding did not seem to matter due to dealing with much larger numbers.

The tests are run 100 times and as a result of some skewed results (at seemingly only the top end), I removed the "outliers" by using "pop" to remove the top 10 results.


ToDo
----
- testing.
- refactoring.
- attempt in Java.
- first test result always unusually high?
- further "own" algorithms as per course suggested notes.
