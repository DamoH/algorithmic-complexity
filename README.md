# algorithmic-complexity


This is the "Ruby" code for the testing how efficient algorithms are and, in the initial cases, timing code and the following library functions :

- last
- reverse
- shuffle
- sort (using 'shuffle' first so as not to bias the results, as per the course instructions).

You just have to amend the code in the for loop in lines 10 & 12 to be able to test the additional Ruby '.library' functions (in the last.rb file)

I have attached some of my spreadsheet results and charts plotting them (these are ".numbers" attachments). You will note that on one of my initial charts the x-axis is not totally linear and is split into 0-1000 (100 steps) and 1000 to 5000 (with 1000 steps).... so in effect this is 2 adjoined charts with different ranges. However, on additional attached charts I have corrected this.

Once I was plotting arrays with elements ranging from 50,000 to 1,000,000 did I start noticing curvature of the graph plotting... depending on the efficiency (or lack of) my "own" algorithms ie ownShuffle.rb

I also had problems with the Ruby 'Time.now.nsec' (for registering nanoseconds), as at higher array element volumes it started registering declining and then negative numbers. This was due to "only" the nanoseconds part of the time stamp being registered (discovered after reading the Ruby docs). This seemed to be fixed my switching to a 'Time.now.to_f' method chain.

The CohortGroupingB tests were run with '8' and '16' groups, with no significant difference between the two (so only the x8 size was plotted/charted).


Notes
-----
These plotted results were initially run from repl.it which didn't seem to be able to cope with larger data arrays (Mac terminal/irb was rounding all results to the nearest 1000), but I switched to irb when the rounding did not seem to matter due to dealing with much larger data sets - 50,000 to 1,000,000.

The tests are run 100 times and as a result of some skewed results (at seemingly only the top end), I removed the "outliers" by using the ".pop" and ".shift" functions to remove the top 10 and bottom 10 results.


ToDo
----
- TDD.
- refactoring of code (and maybe removing comments).
- attempt in Java.
- first test result always unusually high... why?
- further "own" algorithms as per course suggested notes.
