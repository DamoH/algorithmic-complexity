# algorithmic-complexity


This is my "Ruby" code for the testing how efficient algorithms are and, in the initial cases, timing code for the following library functions :

- last
- reverse
- shuffle
- sort (using 'shuffle' first so as not to bias the results, as per the course instructions).

For these particular library functions, and within the code in the 'last.rb' file, you just have to amend the code in the 'for loop' on lines 10 & 12 - as per the commented out text - to be able to test the additional Ruby '.library' functions. This has to be copied and run in the browser based repl.it due to roundings on timings down to 0 in irb.

The remainder of the algorithms code can be run from the terminals irb (guidance start up code is in the 'feature_tests.rb' file) ie for non-library functions, due to higher numbers of array elements and therefore longer timing results.

I have included below my spreadsheet results and charts plotting them.

Once I was plotting arrays with elements ranging from 50,000 to 1,000,000 did I start noticing curvature of the graphs... depending on the efficiency (or lack of) my "own" algorithms ie ownShuffle.rb (see below)

I also had problems with the Ruby 'Time.now.nsec' (for registering nanoseconds), as at higher array element volumes it started registering declining and then negative numbers. This was due to "only" the nanoseconds part of the time stamp being registered (discovered after reading the Ruby docs). This seemed to be fixed my switching to a 'Time.now.to_f' method chain, and then multiplying the results, in the 'runner' method, by 1bn (this was tested for similarities with previous low number results).

The CohortGroupingB tests were run with '8' and '16' groups, with no significant difference between the two (so only the x8 size was plotted/charted, despite having both sets of figures in the table).


Notes
-----
As mentioned previously, Ruby's '.library' function plotted results were initially run from repl.it which didn't seem to be able to cope with larger data arrays (Mac terminal/irb was rounding all results to the nearest 1000, and therefore more often to '0'), but I switched to irb for the later tests when the rounding did not seem to matter due to dealing with much larger data sets - 50,000 to 1,000,000.

The tests are all run 100 times and as a result of some skewed results (at seemingly only the top end), I removed the "outliers" by using the ".pop" and ".shift" functions to remove the top 10 and bottom 10 results 'before' averaging.


![image](https://user-images.githubusercontent.com/18572799/48225221-1ada9e00-e394-11e8-90fc-306921cdd552.png)


You will notice below the time improvement on my ownShuffle algo (from the green to the yellow line) once I had refactored so that the shuffle code replaced an element at the end of the array (index '-1'), instead of at the start (index '0'). This, I believe, is due to not having to shift all elements along in the shuffle.

![image](https://user-images.githubusercontent.com/18572799/48225423-b23ff100-e394-11e8-896d-2336799bd1a5.png)


The chart below is for my BubbleSort and QuickSort algorithms. I used smaller data sets (2500 - 50000) for these, due to the time that the BubbleSort algo was taking to run. As expected the QuickSort was considerably faster...

![image](https://user-images.githubusercontent.com/18572799/48257432-6e87ce80-e40a-11e8-95b6-eea84c36fbfb.png)



ToDo
----
- TDD.
- refactoring of code (and maybe removing comments).
- attempt in Java.
- first test result always unusually high... why?
- further "own" algorithms as per course suggested notes.
- code and plot additional sorting algorithms.
