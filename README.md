# algorithmic-complexity


This is the "Ruby" code for the testing how efficient programmes are and, in this initial case, timing code and the following library functions :

- last
- reverse
- shuffle
- sort (using 'shuffle' first so as not to bias the results, as per the course instructions).

I have attached some of my spreadsheet results and a chart plotting them (this is a Mac "numbers" attachment). You will note that the x-axis is not totally linear and is split into 0-1000 (100 steps) and 1000 to 5000 (with 1000 steps).
\

Note
----
These plotted results were run from repl.it which didn't seem to be able to cope with larger data arrays (Mac terminal was rounding all results to the nearest 1000, and was quicker at the time to use the browser).

As a result of some skewed results (at seemingly only the top end), I removed the "outliers" by using "pop" to remove the top 10 results.


ToDo
----
- testing
- refactoring
- remove top AND bottom 10"%" skewed results.
- attempt in Java.
.
