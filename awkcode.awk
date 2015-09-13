# unbundle - unpack a bundle into separate files

$1 != prev { close(prev); prev = $1 }
           { print substr($0, index($0, " ") + 1) >$1 }
emp.data Beth	4.00	0
emp.data Dan	3.75	0
emp.data Kathy	4.00	10
emp.data Mark	5.00	20
emp.data Mary	5.50	22
emp.data Susie	4.25	18
05.awk { print $1, $3 }
28.awk { print NF, $1, $NF }
06.awk { print $1, $2 * $3 }
07.awk { print NR, $0 }
10.awk { print "total pay for", $1, "is", $2 * $3 }
11.awk { printf("total pay for %s is $%.2f\n", $1, $2 * $3) }
11a.awk { printf("%-8s $%6.2f\n", $1, $2 * $3) }
08.sh awk '{ printf("%6.2f  %s\n", $2 * $3, $0) }' emp.data | sort
12.awk $2 >= 5
13.awk $2 * $3 > 50 { printf("$%.2f for %s\n", $2 * $3, $1) }
14.awk $1 == "Susie"
15.awk /Susie/
20.awk $2 >= 4 || $3 >= 20
21.awk $2 >= 4
21.awk $3 >= 20
22.awk !($2 < 4 && $3 < 20)
26.awk NF != 3   { print $0, "number of fields is not equal to 3" }
26.awk $2 < 3.35 { print $0, "rate is below minimum wage" }
26.awk $2 > 10   { print $0, "rate exceeds $10 per hour" }
26.awk $3 < 0    { print $0, "negative hours worked" }
26.awk $3 > 60   { print $0, "too many hours worked" }
30.awk BEGIN { print "NAME    RATE   HOURS";  print "" }
30.awk       { print }
31.awk $3 > 15 { emp = emp + 1 }
31.awk END     { print emp, "employees worked more than 15 hours" }
31a.awk END { print NR, "employees" }
32.awk     { pay = pay + $2 * $3 }
32.awk END { print NR, "employees"
32.awk       print "total pay is", pay
32.awk       print "average pay is", pay/NR
32.awk     }
33.awk $2 > maxrate { maxrate = $2; maxemp = $1 }
33.awk END { print "highest hourly rate:", maxrate, "for", maxemp }
34.awk     { names = names $1 " " }
34.awk END { print names }
33a.awk     { last = $0 }
33a.awk END { print last }
40.awk { print $1, length($1) }
40a.awk     { nc = nc + length($0) + 1
40a.awk       nw = nw + NF
40a.awk     }
40a.awk END { print NR, "lines,", nw, "words,", nc, "characters" }
41.awk $2 > 6 { n = n + 1; pay = pay + $2 * $3 }
41.awk END    { if (n > 0)
41.awk              print n, "employees, total pay is", pay,
41.awk                       "average pay is", pay/n
41.awk          else
41.awk              print "no employees are paid more than $6/hour"
41.awk        }
interest1.awk # interest1 - compute compound interest
interest1.awk #   input:  amount  rate  years
interest1.awk #   output: compounded value at the end of each year
interest1.awk 
interest1.awk {   i = 1
interest1.awk     while (i <= $3) {
interest1.awk         printf("\t%.2f\n", $1 * (1 + $2) ^ i)
interest1.awk         i = i + 1
interest1.awk     }
interest1.awk }
forint.awk # interest2 - compute compound interest
forint.awk #   input:  amount  rate  years
forint.awk #   output: compounded value at the end of each year
forint.awk 
forint.awk {   for (i = 1; i <= $3; i = i + 1)
forint.awk         printf("\t%.2f\n", $1 * (1 + $2) ^ i)
forint.awk }
50.awk # reverse - print input in reverse order by line
50.awk 
50.awk     { line[NR] = $0 }  # remember each input line
50.awk 
50.awk END { i = NR           # print lines in reverse order
50.awk       while (i > 0) {
50.awk           print line[i]
50.awk           i = i - 1
50.awk       }
50.awk     }
51.awk # reverse - print input in reverse order by line
51.awk 
51.awk     { line[NR] = $0 }  # remember each input line
51.awk 
51.awk END { for (i = NR; i > 0; i = i - 1)
51.awk           print line[i]
51.awk     }
61.awk END { print NR }
62.awk NR == 10
66.awk { print $NF }
63.awk     { field = $NF}
63.awk END { print field }
64.awk NF > 4
65.awk $NF > 4
67.awk     { nf = nf + NF }
67.awk END { print nf }
68.awk /Beth/ { nlines = nlines + 1 }
68.awk END    { print nlines }
69.awk $1 > max { max = $1; maxline = $0 }
69.awk END      { print max, maxline }
70.awk NF > 0
71.awk length($0) > 80
72.awk { print NF, $0 }
73.awk { print $2, $1 }
74.awk { temp = $1; $1 = $2; $2 = temp; print }
75.awk { $1 = NR; print }
76.awk { $2 = ""; print }
77.awk { for (i = NF; i > 0; i = i - 1) printf("%s ", $i)
77.awk   printf("\n")
77.awk }
78.awk { sum = 0
78.awk   for (i = 1; i <= NF; i = i + 1) sum = sum + $i
78.awk   print sum
78.awk }
79.awk     { for (i = 1; i <= NF; i = i + 1) sum = sum + $i }
79.awk END { print sum }
80.awk { for (i = 1; i <= NF; i = i + 1) if ($i < 0) $i = -$i
80.awk   print
80.awk }
countries USSR	8649	275	Asia
countries Canada	3852	25	North America
countries China	3705	1032	Asia
countries USA	3615	237	North America
countries Brazil	3286	134	South America
countries India	1267	746	Asia
countries Mexico	762	78	North America
countries France	211	55	Europe
countries Japan	144	120	Asia
countries Germany	96	61	Europe
countries England	94	56	Europe
p11.awk # print countries with column headers and totals
p11.awk 
p11.awk BEGIN { FS = "\t"   # make tab the field separator
p11.awk         printf("%10s %6s %5s   %s\n\n",
p11.awk               "COUNTRY", "AREA", "POP", "CONTINENT")
p11.awk       }
p11.awk       { printf("%10s %6d %5d   %s\n", $1, $2, $3, $4)
p11.awk         area = area + $2
p11.awk         pop = pop + $3
p11.awk       }
p11.awk END   { printf("\n%10s %6d %5d\n", "TOTAL", area, pop) }
p12.awk $0 >= "M"
p13.awk $1 < $4
p13a.awk /Asia/
re1.awk /^[0-9]+$/
re2.awk /^[0-9][0-9][0-9]$/
re3.awk /^(\+|-)?[0-9]+\.?[0-9]*$/
re4.awk /^[+-]?[0-9]+[.]?[0-9]*$/
re5.awk /^[+-]?([0-9]+[.]?[0-9]*|[.][0-9]+)([eE][+-]?[0-9]+)?$/
re6.awk /^[A-Za-z][A-Za-z0-9]*$/
re7.awk /^[A-Za-z]$|^[A-Za-z][0-9]$/
re8.awk /^[A-Za-z][0-9]?$/
p16.awk $2 !~ /^[0-9]+$/
p18.awk $4 == "Asia" && $3 > 500
p19.awk $4 == "Asia" || $4 == "Europe"
p20.awk $4 ~ /^(Asia|Europe)$/
p20a.awk /Asia/ || /Europe/
p20b.awk /Asia|Europe/
p21.awk /Europe/, /Africa/
p22.awk FNR == 1, FNR == 5 { print FILENAME ": " $0 }
p22a.awk FNR <= 5 { print FILENAME ": " $0 }
p23.awk $4 == "Asia" { print $1, 1000 * $2 }
p41.awk { $2 = $2 / 1000; print }
p42.awk BEGIN			{ FS = OFS = "\t" }
p42.awk $4 == "North America"	{ $4 = "NA" }
p42.awk $4 == "South America"	{ $4 = "SA" }
p42.awk 			{ print }
p43.awk BEGIN	{ FS = OFS = "\t" }
p43.awk 	{ $5 = 1000 * $3 / $2; print }
p43a.awk { print ($1 != 0 ? 1/$1 : "$1 is zero, line " NR) }
p32.awk $4 == "Asia" { pop = pop + $3; n = n + 1 }
p32.awk END          { print "Total population of the", n,
p32.awk                    "Asian countries is", pop, "million."
p32.awk              }
p34.awk $3 > maxpop  { maxpop = $3; country = $1 }
p34.awk END          { print "country with largest population:",
p34.awk                    country, maxpop
p34.awk              }
p24.awk { $2 /= 1000; print }
p35.awk { print NR ":" $0 }
p17.awk BEGIN	{ digits = "^[0-9]+$" }
p17.awk $2 ~ digits
builtup.awk BEGIN {
builtup.awk     sign = "[+-]?"
builtup.awk     decimal = "[0-9]+[.]?[0-9]*"
builtup.awk     fraction = "[.][0-9]+"
builtup.awk     exponent = "([eE]" sign "[0-9]+)?"
builtup.awk     number = "^" sign "(" decimal "|" fraction ")" exponent "$"
builtup.awk }
builtup.awk $0 ~ number
p36.awk { gsub(/USA/, "United States"); print }
p39.awk { $1 = substr($1, 1, 3); print $0 }
p40.awk     { s = s substr($1, 1, 3) " " }
p40.awk END { print s }
p40a.awk BEGIN { print "1E2"+0, "12E"+0, "E12"+0, "1X2Y3"+0 }
p40b.awk BEGIN { print 1E2 "", 12E-2 "", E12 "", 1.23456789 "" }
p45.awk {    i = 1
p45.awk      while (i <= NF) {
p45.awk          print $i
p45.awk          i++
p45.awk      }
p45.awk }
p46.awk { for (i = 1; i <= NF; i++)
p46.awk       print $i
p46.awk }
empty.awk BEGIN { FS = "\t" }
empty.awk       { for (i = 1; i <= NF && $i != ""; i++)
empty.awk             ;
empty.awk         if (i <= NF)
empty.awk             print
empty.awk       }
revline.awk     { x[NR] = $0 }
revline.awk END { for (i = NR; i > 0; i--) print x[i] }
p47.awk /Asia/   { pop["Asia"] += $3 }
p47.awk /Europe/ { pop["Europe"] += $3 }
p47.awk END      { print "Asian population is",
p47.awk                pop["Asia"], "million."
p47.awk            print "European population is",
p47.awk                pop["Europe"], "million."
p47.awk          }
p48.awk BEGIN { FS = "\t" }
p48.awk       { pop[$4] += $3 }
p48.awk END   { for (name in pop)
p48.awk             print name, pop[name]
p48.awk       }
p51.awk function max(m, n) {
p51.awk     return m > n ? m : n
p51.awk }
p51a.awk { print max($1,max($2,$3)) }  # print maximum of $1, $2, $3
p51a.awk 
p51a.awk function max(m, n) {
p51a.awk     return m > n ? m : n
p51a.awk }
p52.awk BEGIN	{ OFS = ":"; ORS = "\n\n" }
p52.awk 	{ print $1, $2 }
p53.awk $3 > 100   { print $1, $3 >"bigpop" }
p53.awk $3 <= 100  { print $1, $3 >"smallpop" }
p53a.awk { print($1, $3) > ($3 > 100 ? "bigpop" : "smallpop") }
p53b.awk { print > $1 }
p54.awk # print continents and populations, sorted by population
p54.awk 
p54.awk BEGIN { FS = "\t" }
p54.awk       { pop[$4] += $3 }
p54.awk END   { for (c in pop)
p54.awk           printf("%15s\t%6d\n", c, pop[c]) | "sort -t'\t' +1rn"
p54.awk       }
p60.awk # include - replace #include "f" by contents of file f
p60.awk 
p60.awk /^#include/ {
p60.awk     gsub(/"/, "", $2)
p60.awk     while (getline x <$2 > 0)
p60.awk         print x
p60.awk     next
p60.awk }
p60.awk { print }
p61.awk # echo - print command-line arguments
p61.awk 
p61.awk BEGIN {
p61.awk     for (i = 1; i < ARGC; i++)
p61.awk         printf "%s ", ARGV[i]
p61.awk     printf "\n"
p61.awk }
p44.awk # seq - print sequences of integers
p44.awk #   input:  arguments q, p q, or p q r;  q >= p; r > 0
p44.awk #   output: integers 1 to q, p to q, or p to q in steps of r
p44.awk 
p44.awk BEGIN {
p44.awk     if (ARGC == 2)
p44.awk         for (i = 1; i <= ARGV[1]; i++)
p44.awk             print i
p44.awk     else if (ARGC == 3)
p44.awk         for (i = ARGV[1]; i <= ARGV[2]; i++)
p44.awk             print i
p44.awk     else if (ARGC == 4)
p44.awk         for (i = ARGV[1]; i <= ARGV[2]; i += ARGV[3])
p44.awk             print i
p44.awk }
p62.awk $1 == "#include" { gsub(/"/, "", $2); system("cat " $2); next }
p62.awk                  { print }
field.awk # field - print named fields of each input line
field.awk #   usage:  field n n n ... file file file ...
field.awk 
field.awk awk '
field.awk BEGIN {
field.awk     for (i = 1; ARGV[i] ~ /^[0-9]+$/; i++) { # collect numbers
field.awk         fld[++nf] = ARGV[i]
field.awk         ARGV[i] = ""
field.awk     }
field.awk     if (i >= ARGC)   # no file names so force stdin
field.awk         ARGV[ARGC++] = "-"
field.awk }
field.awk {   for (i = 1; i <= nf; i++)
field.awk         printf("%s%s", $fld[i], i < nf ? " " : "\n")
field.awk }
field.awk ' $*
sum1 # sum1 - print column sums
sum1 #   input:  rows of numbers
sum1 #   output: sum of each column
sum1 #     missing entries are treated as zeros
sum1 
sum1     { for (i = 1; i <= NF; i++)
sum1           sum[i] += $i
sum1       if (NF > maxfld)
sum1           maxfld = NF
sum1     }
sum1 END { for (i = 1; i <= maxfld; i++) {
sum1           printf("%g", sum[i])
sum1           if (i < maxfld)
sum1               printf("\t")
sum1           else
sum1               printf("\n")
sum1       }
sum1     }
sum2 # sum2 - print column sums
sum2 #     check that each line has the same number of fields
sum2 #        as line one
sum2 
sum2 NR==1 { nfld = NF }
sum2       { for (i = 1; i <= NF; i++)
sum2             sum[i] += $i
sum2         if (NF != nfld)
sum2             print "line " NR " has " NF " entries, not " nfld
sum2       }
sum2 END   { for (i = 1; i <= nfld; i++)
sum2             printf("%g%s", sum[i], i < nfld ? "\t" : "\n")
sum2       }
sum3 # sum3 - print sums of numeric columns
sum3 #     input:  rows of integers and strings
sum3 #     output: sums of numeric columns
sum3 #       assumes every line has same layout
sum3 
sum3 NR==1 { nfld = NF
sum3         for (i = 1; i <= NF; i++)
sum3             numcol[i] = isnum($i)
sum3       }
sum3 
sum3       { for (i = 1; i <= NF; i++)
sum3             if (numcol[i])
sum3                 sum[i] += $i
sum3       }
sum3 
sum3 END   { for (i = 1; i <= nfld; i++) {
sum3             if (numcol[i])
sum3                 printf("%g", sum[i])
sum3             else
sum3                 printf("--")
sum3             printf(i < nfld ? "\t" : "\n")
sum3         }
sum3       }
sum3 
sum3 function isnum(n) { return n ~ /^[+-]?[0-9]+$/ }
3-4.ans     { total[$1] += $2 }
3-4.ans END { for (x in total) print x, total[x] | "sort" }
percent # percent
percent #   input:  a column of nonnegative numbers
percent #   output: each number and its percentage of the total
percent 
percent     { x[NR] = $1; sum += $1 }
percent 
percent END { if (sum != 0)
percent           for (i = 1; i <= NR; i++)
percent               printf("%10.2f %5.1f\n", x[i], 100*x[i]/sum)
percent     }
histogram # histogram
histogram #   input:  numbers between 0 and 100
histogram #   output: histogram of deciles
histogram 
histogram     { x[int($1/10)]++ }
histogram 
histogram END { for (i = 0; i < 10; i++)
histogram           printf(" %2d - %2d: %3d %s\n",
histogram               10*i, 10*i+9, x[i], rep(x[i],"*"))
histogram       printf("100:      %3d %s\n", x[10], rep(x[10],"*"))
histogram     }
histogram 
histogram function rep(n,s,   t) {  # return string of n s's
histogram     while (n-- > 0)
histogram         t = t s
histogram     return t
histogram }
hist.sh awk '
hist.sh # generate random integers
hist.sh BEGIN { for (i = 1; i <= 200; i++)
hist.sh             print int(101*rand())
hist.sh       }
hist.sh ' |
hist.sh awk -f histogram
histans1.awk 
histans1.awk     { x[int($1/10)]++ }
histans1.awk END { max = MAXSTARS = 25
histans1.awk       for (i = 0; i <= 10; i++)
histans1.awk           if (x[i] > max)
histans1.awk               max = x[i]
histans1.awk       for (i = 0; i <= 10; i++)
histans1.awk           y[i] = x[i]/max * MAXSTARS
histans1.awk       for (i = 0; i < 10; i++)
histans1.awk           printf(" %2d - %2d: %3d %s\n",
histans1.awk               10*i, 10*i+9, x[i], rep(y[i],"*"))
histans1.awk       printf("100:      %3d %s\n", x[10], rep(y[10],"*"))
histans1.awk     }
histans1.awk 
histans1.awk function rep(n,s,   t) {  # return string of n s's
histans1.awk     while (n-- > 0)
histans1.awk         t = t s
histans1.awk     return t
histans1.awk }
sumcomma # sumcomma - add up numbers containing commas
sumcomma 
sumcomma     { gsub(/,/, ""); sum += $0 }
sumcomma END { print sum }
addcomma # addcomma - put commas in numbers
addcomma #   input:  a number per line
addcomma #   output: the input number followed by
addcomma #      the number with commas and two decimal places 
addcomma 
addcomma     { printf("%-12s %20s\n", $0, addcomma($0)) }
addcomma 
addcomma function addcomma(x,   num) {
addcomma     if (x < 0)
addcomma         return "-" addcomma(-x)
addcomma     num = sprintf("%.2f", x)   # num is dddddd.dd
addcomma     while (num ~ /[0-9][0-9][0-9][0-9]/)
addcomma         sub(/[0-9][0-9][0-9][,.]/, ",&", num)
addcomma     return num
addcomma }
addcomma.ans /^[+-]?[0-9][0-9]?[0-9]?(,[0-9][0-9][0-9])*$/ {
addcomma.ans         gsub(/,/, "")
addcomma.ans         sum += $0
addcomma.ans         next
addcomma.ans }
addcomma.ans       { print "bad format:", $0 }
addcomma.ans END   { print sum }
addcomma.ans2 /^[+-]?[0-9][0-9]?[0-9]?(,[0-9][0-9][0-9])*([.][0-9]*)?$/ {
addcomma.ans2         gsub(/,/, "")
addcomma.ans2         sum += $0
addcomma.ans2         next
addcomma.ans2 }
addcomma.ans2       { print "bad format:", $0}
addcomma.ans2 END   { print sum }
datecvt # date convert - convert mmddyy into yymmdd in $1
datecvt 
datecvt { $1 = substr($1,5,2) substr($1,1,2) substr($1,3,2); print }
date.data 013042 mary's birthday
date.data 032772 mark's birthday
date.data 052470 anniversary
date.data 061209 mother's birthday
date.data 110175 elizabeth's birthday
daynum function daynum(y, m, d,    days, i, n) {   # 1 == Jan 1, 1901
daynum     split("31 28 31 30 31 30 31 31 30 31 30 31", days)
daynum     # 365 days a year, plus one for each leap year
daynum     n = (y-1901) * 365 + int((y-1901)/4)
daynum     if (y % 4 == 0) # leap year from 1901 to 2099
daynum         days[2]++
daynum     for (i = 1; i < m; i++)
daynum         n += days[i]
daynum     return n + d
daynum }
daynum     { print daynum($1, $2, $3) }
nm.output file.o:
nm.output 00000c80 T _addroot
nm.output 00000b30 T _checkdev
nm.output 00000a3c T _checkdupl
nm.output          U _chown
nm.output          U _client
nm.output          U _close
nm.output funmount.o:
nm.output 00000000 T _funmount
nm.output          U cerror
nm.format # nm.format - add filename to each nm output line
nm.format 
nm.format NF == 1 { file = $1 }
nm.format NF == 2 { print file, $1, $2 }
nm.format NF == 3 { print file, $2, $3 }
prchecks # prchecks - print formatted checks
prchecks #   input:  number \t amount \t payee
prchecks #   output: eight lines of text for preprinted check forms
prchecks 
prchecks BEGIN {
prchecks     FS = "\t"
prchecks     dashes = sp45 = sprintf("%45s", " ")
prchecks     gsub(/ /, "-", dashes)        # to protect the payee
prchecks     "date" | getline date         # get today's date
prchecks     split(date, d, " ")
prchecks     date = d[2] " " d[3] ", " d[6]
prchecks     initnum()    # set up tables for number conversion
prchecks }
prchecks NF != 3 || $2 >= 1000000 {        # illegal data
prchecks     printf("\nline %d illegal:\n%s\n\nVOID\nVOID\n\n\n", NR, $0)
prchecks     next                          # no check printed
prchecks }
prchecks {   printf("\n")                  # nothing on line 1
prchecks     printf("%s%s\n", sp45, $1)    # number, indented 45 spaces
prchecks     printf("%s%s\n", sp45, date)  # date, indented 45 spaces
prchecks     amt = sprintf("%.2f", $2)     # formatted amount
prchecks     printf("Pay to %45.45s   $%s\n", $3 dashes, amt)  # line 4
prchecks     printf("the sum of %s\n", numtowords(amt))        # line 5
prchecks     printf("\n\n\n")              # lines 6, 7 and 8
prchecks }
prchecks 
prchecks function numtowords(n,   cents, dols) { # n has 2 decimal places
prchecks     cents = substr(n, length(n)-1, 2)
prchecks     dols = substr(n, 1, length(n)-3)
prchecks     if (dols == 0)
prchecks         return "zero dollars and " cents " cents exactly"
prchecks     return intowords(dols) " dollars and " cents " cents exactly"
prchecks }
prchecks 
prchecks function intowords(n) {
prchecks     n = int(n)
prchecks     if (n >= 1000)
prchecks         return intowords(n/1000) " thousand " intowords(n%1000)
prchecks     if (n >= 100)
prchecks         return intowords(n/100) " hundred " intowords(n%100)
prchecks     if (n >= 20)
prchecks         return tens[int(n/10)] " " intowords(n%10)
prchecks     return nums[n]
prchecks }
prchecks 
prchecks function initnum() {
prchecks     split("one two three four five six seven eight nine " \
prchecks           "ten eleven twelve thirteen fourteen fifteen " \
prchecks           "sixteen seventeen eighteen nineteen", nums, " ")
prchecks     split("ten twenty thirty forty fifty sixty " \
prchecks           "seventy eighty ninety", tens, " ")
prchecks }
checkfix.ans # prchecks - print formatted checks
checkfix.ans #     input:  number \t amount \t payee
checkfix.ans #     output: eight lines of text for preprinted check forms
checkfix.ans 
checkfix.ans BEGIN {
checkfix.ans     FS = "\t"
checkfix.ans     dashes = sp45 = sprintf("%45s", " ")
checkfix.ans     gsub(/ /, "-", dashes)        # to protect the payee
checkfix.ans     "date" | getline date         # get today's date
checkfix.ans     split(date, d, " ")
checkfix.ans     date = d[2] ". " d[3] ", " d[6]
checkfix.ans     initnum()    # set up tables for number conversion
checkfix.ans }
checkfix.ans NF != 3 {
checkfix.ans     printf("\nrec %d has %d fields:\n|%s|\n\nVOID\nVOID\n\n\n",
checkfix.ans               NR, NF, $0)
checkfix.ans     next
checkfix.ans }
checkfix.ans {   printf("\n")                  # nothing on line 1
checkfix.ans     printf("%s%s\n", sp45, $1)    # number, indented 45 spaces
checkfix.ans     printf("%s%s\n", sp45, date)  # date, indented 45 spaces
checkfix.ans     amt = sprintf("%.2f", $2)     # formatted amount
checkfix.ans     printf("Pay to %45.45s   $%s\n", $3 dashes, amt)  # line 4
checkfix.ans     printf("the sum of %s\n", numtowords(amt))        # line 5
checkfix.ans     printf("\n\n\n")              # lines 6, 7 and 8
checkfix.ans }
checkfix.ans function numtowords(n,   cents, dols, s) { # n has 2 decimal places
checkfix.ans     cents = substr(n, length(n)-1, 2)
checkfix.ans     dols = substr(n, 1, length(n)-3)
checkfix.ans     if (dols == 0)
checkfix.ans         s = "zero dollars and " cents " cents exactly"
checkfix.ans     else
checkfix.ans         s = intowords(dols) " dollars and " cents " cents exactly"
checkfix.ans     sub(/^one dollars/, "one dollar", s)
checkfix.ans     gsub(/  +/, " ", s)
checkfix.ans     return s
checkfix.ans }
checkfix.ans function intowords(n) {
checkfix.ans     n = int(n)
checkfix.ans     if (n >= 1000000)
checkfix.ans         return("VOID")
checkfix.ans     if (n >= 1000)
checkfix.ans         return intowords(n/1000) " thousand " intowords(n%1000)
checkfix.ans     if (n >= 100)
checkfix.ans         return intowords(n/100) " hundred " intowords(n%100)
checkfix.ans     if (n >= 20)
checkfix.ans         return tens[int(n/10)] " " intowords(n%10)
checkfix.ans     return nums[n]
checkfix.ans }
checkfix.ans function initnum() {
checkfix.ans     split("one two three four five six seven eight nine " \
checkfix.ans           "ten eleven twelve thirteen fourteen fifteen " \
checkfix.ans           "sixteen seventeen eighteen nineteen", nums, " ")
checkfix.ans     split("ten twenty thirty forty fifty sixty " \
checkfix.ans           "seventy eighty ninety", tens, " ")
checkfix.ans }
colcheck # colcheck - check consistency of columns
colcheck #   input:  rows of numbers and strings
colcheck #   output: lines whose format differs from first line
colcheck 
colcheck NR == 1	{
colcheck     nfld = NF
colcheck     for (i = 1; i <= NF; i++)
colcheck        type[i] = isnum($i)
colcheck }
colcheck {   if (NF != nfld)
colcheck        printf("line %d has %d fields instead of %d\n",
colcheck           NR, NF, nfld)
colcheck     for (i = 1; i <= NF; i++)
colcheck        if (isnum($i) != type[i])
colcheck           printf("field %d in line %d differs from line 1\n",
colcheck              i, NR)
colcheck }
colcheck 
colcheck function isnum(n) { return n ~ /^[+-]?[0-9]+$/ }
p12check # p12check - check input for alternating .P1/.P2 delimiters
p12check 
p12check /^\.P1/ { if (p != 0)
p12check               print ".P1 after .P1, line", NR
p12check           p = 1
p12check         }
p12check /^\.P2/ { if (p != 1)
p12check               print ".P2 with no preceding .P1, line", NR
p12check           p = 0
p12check         }
p12check END     { if (p != 0) print "missing .P2 at end" }
delim.ans BEGIN {
delim.ans     expects["aa"] = "bb"
delim.ans     expects["cc"] = "dd"
delim.ans     expects["ee"] = "ff"
delim.ans }
delim.ans /^(aa|cc|ee)/ {
delim.ans     if (p != "")
delim.ans         print "line", NR, ": expected " p
delim.ans     p = expects[substr($0, 1, 2)]
delim.ans }
delim.ans /^(bb|dd|ff)/ {
delim.ans     x = substr($0, 1, 2)
delim.ans     if (p != x) {
delim.ans         print "line", NR, ": saw " x
delim.ans         if (p)
delim.ans             print ", expected", p
delim.ans     }
delim.ans     p = ""
delim.ans }
delim.ans END {
delim.ans     if (p != "")
delim.ans         print "at end, missing", p
delim.ans }
passwd # passwd - check password file
passwd 
passwd BEGIN {
passwd     FS = ":" }
passwd NF != 7 {
passwd     printf("line %d, does not have 7 fields: %s\n", NR, $0) }
passwd $1 ~ /[^A-Za-z0-9]/ {
passwd     printf("line %d, nonalphanumeric user id: %s\n", NR, $0) }
passwd $2 == "" {
passwd     printf("line %d, no password: %s\n", NR, $0) }
passwd $3 ~ /[^0-9]/ {
passwd     printf("line %d, nonnumeric user id: %s\n", NR, $0) }
passwd $4 ~ /[^0-9]/ {
passwd     printf("line %d, nonnumeric group id: %s\n", NR, $0) }
passwd $6 !~ /^\// {
passwd     printf("line %d, invalid login directory: %s\n", NR, $0) }
checkgen.data NF != 7			does not have 7 fields
checkgen.data $1 ~ /[^A-Za-z0-9]/	nonalphanumeric user id
checkgen.data $2 == ""		no password
checkgen # checkgen - generate data-checking program
checkgen #     input:  expressions of the form: pattern tabs message
checkgen #     output: program to print message when pattern matches
checkgen 
checkgen BEGIN { FS = "\t+" }
checkgen { printf("%s {\n\tprintf(\"line %%d, %s: %%s\\n\",NR,$0) }\n",
checkgen       $1, $2)
checkgen }
valid.ans BEGIN { FS = "\t" }
valid.ans /^=/  { print substr($0, 2); next }
valid.ans { printf("%s {\n\tprintf(\"line %%d, %s: %%s\\n\",NR,$0) }\n",
valid.ans       $1, $2)
valid.ans }
compat # compat - check if awk program uses new built-in names
compat 
compat BEGIN { asplit("close system atan2 sin cos rand srand " \
compat                "match sub gsub", fcns)
compat         asplit("ARGC ARGV FNR RSTART RLENGTH SUBSEP", vars)
compat         asplit("do delete function return", keys)
compat       }
compat 
compat       { line = $0 }
compat 
compat /"/   { gsub(/"([^"]|\\")*"/, "", line) }     # remove strings,
compat /\//  { gsub(/\/([^\/]|\\\/)+\//, "", line) } # reg exprs,
compat /#/   { sub(/#.*/, "", line) }                # and comments
compat 
compat       { n = split(line, x, "[^A-Za-z0-9_]+")  # into words
compat         for (i = 1; i <= n; i++) {
compat             if (x[i] in fcns)	
compat                 warn(x[i] " is now a built-in function")
compat             if (x[i] in vars)
compat                 warn(x[i] " is now a built-in variable")
compat             if (x[i] in keys)
compat                 warn(x[i] " is now a keyword")
compat         }
compat       }
compat 
compat function asplit(str, arr) {  # make an assoc array from str
compat     n = split(str, temp)
compat     for (i = 1; i <= n; i++)
compat         arr[temp[i]]++
compat     return n
compat }
compat 
compat function warn(s) {
compat     sub(/^[ \t]*/, "")
compat     printf("file %s, line %d: %s\n\t%s\n", FILENAME, FNR, s, $0)
compat }
bundle # bundle - combine multiple files into one
bundle 
bundle { print FILENAME, $0 }
unbundle # unbundle - unpack a bundle into separate files
unbundle 
unbundle $1 != prev { close(prev); prev = $1 }
unbundle            { print substr($0, index($0, " ") + 1) >$1 }
addr.1 Adam Smith
addr.1 1234 Wall St., Apt. 5C
addr.1 New York, NY 10021
addr.1 212 555-4321
addr.1 
addr.1 David W. Copperfield
addr.1 221 Dickens Lane
addr.1 Monterey, CA 93940
addr.1 408 555-0041
addr.1 work phone 408 555-6532
addr.1 Mary, birthday January 30
addr.1 
addr.1 Canadian Consulate
addr.1 555 Fifth Ave
addr.1 New York, NY
addr.1 212 586-2400
ny1.awk BEGIN { RS = "" }
ny1.awk /New York/
ny2.awk BEGIN { RS = ""; ORS = "\n\n" }
ny2.awk /New York/
smith.awk BEGIN         { RS = ""; FS = "\n" }
smith.awk $1 ~ /Smith$/ { print $1, $4 }   # name, phone
msort.sh # pipeline to sort address list by last names
msort.sh 
msort.sh awk '
msort.sh BEGIN { RS = ""; FS = "\n" }
msort.sh       { printf("%s!!#", x[split($1, x, " ")])
msort.sh         for (i = 1; i <= NF; i++)
msort.sh             printf("%s%s", $i, i < NF ? "!!#" : "\n")
msort.sh       }
msort.sh ' |
msort.sh sort |
msort.sh awk '
msort.sh BEGIN { FS = "!!#" }
msort.sh       { for (i = 2; i <= NF; i++)
msort.sh             printf("%s\n", $i)
msort.sh         printf("\n")
msort.sh       }
msort.sh '
addr.2 accountant
addr.2 Adam Smith
addr.2 1234 Wall St., Apt. 5C
addr.2 New York, NY 10021
addr.2 
addr.2 doctor - ophthalmologist
addr.2 Dr. Will Seymour
addr.2 798 Maple Blvd.
addr.2 Berkeley Heights, NJ 07922
addr.2 
addr.2 lawyer
addr.2 David W. Copperfield
addr.2 221 Dickens Lane
addr.2 Monterey, CA 93940
addr.2 
addr.2 doctor - pediatrician
addr.2 Dr. Susan Mark
addr.2 600 Mountain Avenue
addr.2 Murray Hill, NJ 07974
doctors1.awk /^doctor/, /^$/
doctors2.awk /^doctor/ { p = 1; next }
doctors2.awk p == 1
doctors2.awk /^$/      { p = 0; next }
checks.data check	1021
checks.data to	Champagne Unlimited
checks.data amount	123.10
checks.data date	1/1/87
checks.data 
checks.data deposit
checks.data amount	500.00
checks.data date	1/1/87
checks.data 
checks.data check	1022
checks.data date	1/2/87
checks.data amount	45.10
checks.data to	Getwell Drug Store
checks.data tax	medical
checks.data 
checks.data check	1023
checks.data amount	125.00
checks.data to	International Travel
checks.data date	1/3/87
checks.data 
checks.data amount	50.00
checks.data to	Carnegie Hall
checks.data date	1/3/87
checks.data check	1024
checks.data tax	charitable contribution
checks.data 
checks.data to	American Express
checks.data check	1025
checks.data amount	75.75
checks.data date	1/5/87
check1 # check1 - print total deposits and checks
check1 
check1 /^check/   { ck = 1; next }
check1 /^deposit/ { dep = 1; next }
check1 /^amount/  { amt = $2; next }
check1 /^$/       { addup() }
check1 
check1 END        { addup()
check1              printf("deposits $%.2f, checks $%.2f\n",
check1                  deposits, checks)
check1            }
check1 
check1 function addup() {
check1     if (ck)
check1         checks += amt
check1     else if (dep)
check1         deposits += amt
check1     ck = dep = amt = 0
check1 }
check2 # check2 - print total deposits and checks
check2 
check2 BEGIN           { RS = ""; FS = "\n" }
check2 /(^|\n)deposit/ { deposits += field("amount"); next }
check2 /(^|\n)check/   { checks += field("amount"); next }
check2 END             { printf("deposits $%.2f, checks $%.2f\n",
check2                       deposits, checks)
check2                 }
check2 
check2 function field(name,   i,f) {
check2     for (i = 1; i <= NF; i++) {
check2         split($i, f, "\t")
check2         if (f[1] == name)
check2             return f[2]
check2     }
check2     printf("error: no field %s in record\n%s\n", name, $0)
check2 }
check3 # check3 - print check information
check3 
check3 BEGIN { RS = ""; FS = "\n" }
check3 /(^|\n)check/ {
check3     for (i = 1; i <= NF; i++) {
check3         split($i, f, "\t")
check3         val[f[1]] = f[2]
check3     }
check3     printf("%8s %5d %8s  %s\n",
check3         val["date"],
check3         val["check"],
check3         sprintf("$%.2f", val["amount"]),
check3         val["to"])
check3     for (i in val)
check3         delete val[i]
check3 }
prep1 # prep1 - prepare countries by continent and pop. den.
prep1 
prep1 BEGIN { FS = "\t" }
prep1       { printf("%s:%s:%d:%d:%.1f\n",
prep1             $4, $1, $3, $2, 1000*$3/$2) | "sort -t: +0 -1 +4rn"
prep1       }
form1 # form1 - format countries data by continent, pop. den.
form1 
form1 BEGIN { FS = ":"
form1         printf("%-15s %-10s %10s %7s %12s\n",
form1             "CONTINENT", "COUNTRY", "POPULATION",
form1             "AREA", "POP. DEN.")
form1       }
form1       { printf("%-15s %-10s %7d %10d %10.1f\n",
form1             $1, $2, $3, $4, $5)
form1       }
prep2 # prep2 - prepare countries by continent, inverse pop. den.
prep2 
prep2 BEGIN { FS = "\t"}
prep2       { den = 1000*$3/$2
prep2         printf("%-15s:%12.8f:%s:%d:%d:%.1f\n",
prep2             $4, 1/den, $1, $3, $2, den) | "sort"
prep2       }
form2 # form2 - format countries by continent, pop. den.
form2 
form2 BEGIN { FS = ":"
form2         printf("%-15s %-10s %10s %7s %12s\n",
form2             "CONTINENT", "COUNTRY", "POPULATION",
form2             "AREA", "POP. DEN.")
form2       }
form2       { if ($1 != prev) {
form2             print ""
form2             prev = $1
form2         } else
form2             $1 = ""
form2         printf("%-15s %-10s %7d %10d %10.1f\n",
form2             $1, $2, $3, $4, $5)
form2       }
prep3 # prep3 - prepare countries data for form3
prep3 
prep3 BEGIN  { FS = "\t" }
prep3 pass == 1 {
prep3     area[$4] += $2
prep3     areatot += $2
prep3     pop[$4] += $3
prep3     poptot += $3
prep3 }
prep3 pass == 2 {
prep3     den = 1000*$3/$2
prep3     printf("%s:%s:%s:%f:%d:%f:%f:%d:%d\n",
prep3         $4, $1, $3, 100*$3/poptot, $2, 100*$2/areatot,
prep3         den, pop[$4], area[$4]) | "sort -t: +0 -1 +6rn"
prep3 }
form3 # form3 - format countries report number 3
form3 
form3 BEGIN  {
form3     FS = ":"; date = "January 1, 1988"
form3     hfmt = "%36s %8s %12s %7s %12s\n"
form3     tfmt = "%33s %10s %10s %9s\n"
form3     TOTfmt = "   TOTAL for %-13s%7d%11.1f%11d%10.1f\n" 
form3     printf("%-18s %-40s %19s\n\n", "Report No. 3",
form3       "POPULATION, AREA, POPULATION DENSITY", date)
form3     printf(" %-14s %-14s %-23s %-14s %-11s\n\n",
form3       "CONTINENT", "COUNTRY", "POPULATION", "AREA", "POP. DEN.")
form3     printf(hfmt, "Millions ", "Pct. of", "Thousands ",
form3                  "Pct. of", "People per")
form3     printf(hfmt, "of People", "Total ", "of Sq. Mi.",
form3                  "Total ", "Sq. Mi. ")
form3     printf(hfmt, "---------", "-------", "----------",
form3                  "-------", "----------")
form3 }
form3 {   if ($1 != prev) { # new continent
form3         if (NR > 1)
form3             totalprint()
form3         prev = $1     # first entry for continent
form3         poptot = $8;  poppct = $4
form3         areatot = $9; areapct = $6
form3     } else {          # next entry for continent
form3         $1 = ""
form3         poppct += $4; areapct += $6
form3     }
form3     printf(" %-15s%-10s %6d %10.1f %10d %9.1f %10.1f\n",
form3         $1, $2, $3, $4, $5, $6, $7)
form3     gpop += $3;  gpoppct += $4
form3     garea += $5; gareapct += $6
form3 }
form3 
form3 END {
form3     totalprint()
form3     printf(" GRAND TOTAL %20d %10.1f %10d %9.1f\n",
form3         gpop, gpoppct, garea, gareapct)
form3     printf(tfmt, "=====", "======", "=====", "======")
form3 }
form3 
form3 function totalprint() {	# print totals for previous continent
form3     printf(tfmt, "----", "-----", "-----", "-----")
form3     printf(TOTfmt, prev, poptot, poppct, areatot, areapct)
form3     printf(tfmt, "====", "=====", "=====", "=====")
form3 }
form4 # form4 - format countries data for tbl input
form4 
form4 BEGIN  {
form4     FS = ":"; OFS = "\t"; date = "January 1, 1988"
form4     print ".TS\ncenter;"
form4     print "l c s s s r s\nl\nl l c s c s c\nl l c c c c c."
form4     printf("%s\t%s\t%s\n\n", "Report No. 3",
form4         "POPULATION, AREA, POPULATION DENSITY", date)
form4     print "CONTINENT", "COUNTRY", "POPULATION",
form4           "AREA", "POP. DEN."
form4     print "", "", "Millions", "Pct. of", "Thousands",
form4           "Pct. of", "People per"
form4     print "", "", "of People", "Total", "of Sq. Mi.",
form4           "Total", "Sq. Mi."
form4     print "\t\t_\t_\t_\t_\t_"
form4     print ".T&\nl l n n n n n."
form4 }
form4 
form4 {    if ($1 != prev) {  # new continent
form4         if (NR > 1)
form4             totalprint()
form4         prev = $1
form4         poptot = $8;  poppct = $4
form4         areatot = $9; areapct = $6
form4     } else {            # next entry for current continent
form4         $1 = ""
form4         poppct += $4; areapct += $6
form4     }
form4     printf("%s\t%s\t%d\t%.1f\t%d\t%.1f\t%.1f\n",
form4         $1, $2, $3, $4, $5, $6, $7)
form4     gpop += $3;  gpoppct += $4
form4     garea += $5; gareapct += $6
form4 }
form4 
form4 END {
form4     totalprint()
form4     print ".T&\nl s n n n n n."
form4     printf("GRAND TOTAL\t%d\t%.1f\t%d\t%.1f\n",
form4         gpop, gpoppct, garea, gareapct)
form4     print "", "=", "=", "=", "=", "="
form4     print ".TE"
form4 }
form4 
form4 function totalprint() {    # print totals for previous continent
form4     print ".T&\nl s n n n n n."
form4     print "", "_", "_", "_", "_", "_"
form4     printf("   TOTAL for %s\t%d\t%.1f\t%d\t%.1f\n",
form4         prev, poptot, poppct, areatot, areapct)
form4     print "", "=", "=", "=", "=", "="
form4     print ".T&\nl l n n n n n."
form4 }
table # table - simple table formatter
table 
table BEGIN {
table     FS = "\t"; blanks = sprintf("%100s", " ")
table     number = "^[+-]?([0-9]+[.]?[0-9]*|[.][0-9]+)$"
table }
table 
table {   row[NR] = $0
table     for (i = 1; i <= NF; i++) {
table         if ($i ~ number)
table             nwid[i] = max(nwid[i], length($i))
table         wid[i] = max(wid[i], length($i))
table     }
table }
table 
table END {
table     for (r = 1; r <= NR; r++) {
table         n = split(row[r], d)
table         for (i = 1; i <= n; i++) {
table             sep = (i < n) ? "   " : "\n"
table             if (d[i] ~ number)
table                 printf("%" wid[i] "s%s", numjust(i,d[i]), sep)
table             else
table                 printf("%-" wid[i] "s%s", d[i], sep)
table         }
table     }
table }
table 
table function max(x, y) { return (x > y) ? x : y }
table 
table function numjust(n, s) {   # position s in field n
table     return s substr(blanks, 1, int((wid[n]-nwid[n])/2))
table }
table1 # table1 - single column formatter
table1 #   input:  one column of strings and decimal numbers
table1 #   output: aligned column
table1 
table1 BEGIN {
table1     blanks = sprintf("%100s", " ")
table1     number = "^[+-]?([0-9]+[.]?[0-9]*|[.][0-9]+)$"
table1     left = "^[+-]?[0-9]*"
table1     right = "[.][0-9]*"
table1 }
table1 
table1 {   row[NR] = $1
table1     if ($1 ~ number) {
table1         match($1, left) # matches the empty string, so RLENGTH>=0
table1         lwid = max(lwid, RLENGTH)
table1         if (!match($1, right))
table1             RLENGTH = 0
table1         rwid = max(rwid, RLENGTH)
table1         wid = max(wid, lwid + rwid)
table1     } else
table1         wid = max(wid, length($1))
table1 }
table1 
table1 END {
table1     for (r = 1; r <= NR; r++) {
table1         if (row[r] ~ number)
table1             printf("%" wid "s\n", numjust(row[r]))
table1         else
table1             printf("%-" wid "s\n", row[r])
table1     }
table1 }
table1 
table1 function max(x, y) { return (x > y) ? x : y }
table1 
table1 function numjust(s) {   # position s
table1     if (!match(s, right))
table1         RLENGTH = 0
table1     return s substr(blanks, 1, int(rwid-RLENGTH+(wid-(lwid+rwid))/2))
table1 }
info0 awk '
info0 BEGIN { FS = "\t" }
info0 $1 ~ /Canada/ {
info0     printf("%s:\n", $1)
info0     printf("\t%d million people\n", $3)
info0     printf("\t%.3f million sq. mi.\n", $2/1000)
info0     printf("\t%.1f people per sq. mi.\n", 1000*$3/$2)
info0 }
info0 ' countries
info awk '
info # info - print information about country
info #    usage: info country-name
info 
info BEGIN { FS = "\t" }
info $1 ~ /'$1'/ {
info     printf("%s:\n", $1)
info     printf("\t%d million people\n", $3)
info     printf("\t%.3f million sq. mi.\n", $2/1000)
info     printf("\t%.1f people per sq. mi.\n", 1000*$3/$2)
info }
info ' countries
info.ans awk '
info.ans BEGIN { FS = "\t"; pat = ARGV[1]; ARGV[1] = "-" }
info.ans $1 ~ pat {
info.ans     printf("%s:\n", $1)
info.ans     printf("\t%d million people\n", $3)
info.ans     printf("\t%.3f million sq. mi.\n", $2/1000)
info.ans     printf("\t%.1f people per sq. mi.\n", 1000*$3/$2)
info.ans }
info.ans ' "$1" <countries
info1.ans awk '
info1.ans BEGIN { FS = "\t" }
info1.ans $1 ~ pat {
info1.ans     printf("%s:\n", $1)
info1.ans     printf("\t%d million people\n", $3)
info1.ans     printf("\t%.3f million sq. mi.\n", $2/1000)
info1.ans     printf("\t%.1f people per sq. mi.\n", 1000*$3/$2)
info1.ans }
info1.ans ' pat="$1" <countries
letter.text Subject: Demographic Information About #1
letter.text From: AWK Demographics, Inc.
letter.text 
letter.text In response to your request for information about #1,
letter.text our latest research has revealed that its population is #2
letter.text million people and its area is #3 million square miles.
letter.text This gives #1 a population density of #4 people per
letter.text square mile.
form.gen # form.gen - generate form letters
form.gen #   input:  prototype file letter.text; data lines
form.gen #   output: one form letter per data line
form.gen 
form.gen BEGIN {
form.gen     FS = ":"
form.gen     while (getline <"letter.text" > 0) # read form letter
form.gen         form[++n] = $0
form.gen }
form.gen 
form.gen {   for (i = 1; i <= n; i++) { # read data lines
form.gen         temp = form[i]         # each line generates a letter
form.gen         for (j = 1; j <= NF; j++)
form.gen             gsub("#" j, $j, temp)
form.gen         print temp
form.gen     }
form.gen }
capitals USSR	Moscow
capitals Canada	Ottawa
capitals China	Beijing
capitals USA	Washington
capitals Brazil	Brasilia
capitals India	New Delhi
capitals Mexico	Mexico City
capitals France	Paris
capitals Japan	Tokyo
capitals Germany	Bonn
capitals England	London
merge.awk awk ' BEGIN { FS = "\t" }
merge.awk       FILENAME == "capitals" {
merge.awk           cap[$1] = $2
merge.awk       }
merge.awk       FILENAME == "countries" && $4 == "Asia" {
merge.awk           print $1, $3, cap[$1]
merge.awk       }
merge.awk ' capitals countries
join.awk # join - join file1 file2 on first field
join.awk #   input:  two sorted files, tab-separated fields
join.awk #   output: natural join of lines with common first field
join.awk 
join.awk BEGIN {
join.awk     OFS = sep = "\t"
join.awk     file2 = ARGV[2]
join.awk     ARGV[2] = ""  # read file1 implicitly, file2 explicitly
join.awk     eofstat = 1   # end of file status for file2
join.awk     if ((ng = getgroup()) <= 0)
join.awk         exit      # file2 is empty
join.awk }
join.awk 
join.awk {   while (prefix($0) > prefix(gp[1]))
join.awk         if ((ng = getgroup()) <= 0)
join.awk             exit  # file2 exhausted
join.awk     if (prefix($0) == prefix(gp[1]))  # 1st attributes in file1
join.awk         for (i = 1; i <= ng; i++)     #     and file2 match
join.awk             print $0, suffix(gp[i])   # print joined line
join.awk }
join.awk 
join.awk function getgroup() { # put equal prefix group into gp[1..ng]
join.awk     if (getone(file2, gp, 1) <= 0)    # end of file
join.awk         return 0
join.awk     for (ng = 2; getone(file2, gp, ng) > 0; ng++)
join.awk         if (prefix(gp[ng]) != prefix(gp[1])) {
join.awk             unget(gp[ng])    # went too far
join.awk             return ng-1
join.awk         }
join.awk     return ng-1
join.awk }
join.awk 
join.awk function getone(f, gp, n) {  # get next line in gp[n]
join.awk     if (eofstat <= 0) # eof or error has occurred
join.awk         return 0
join.awk     if (ungot) {      # return lookahead line if it exists
join.awk         gp[n] = ungotline
join.awk         ungot = 0
join.awk         return 1
join.awk     }
join.awk     return eofstat = (getline gp[n] <f)
join.awk }
join.awk 
join.awk function unget(s)  { ungotline = s; ungot = 1 }
join.awk function prefix(s) { return substr(s, 1, index(s, sep) - 1) }
join.awk function suffix(s) { return substr(s, index(s, sep) + 1) }
relfile countries:
relfile 	country
relfile 	area
relfile 	population
relfile 	continent
relfile capitals:
relfile 	country
relfile 	capital
relfile cc:
relfile 	country
relfile 	area
relfile 	population
relfile 	continent
relfile 	capital
relfile 	!sort countries >temp.countries
relfile 	!sort capitals >temp.capitals
relfile 	!join temp.countries temp.capitals >cc
avgarea.awk { area += $area }; END { print area/NR }
qawk # qawk - awk relational database query processor
qawk 
qawk BEGIN { readrel("relfile") }
qawk /./   { doquery($0) }
qawk 
qawk function readrel(f) {
qawk     while (getline <f > 0)   # parse relfile
qawk         if ($0 ~ /^[A-Za-z]+ *:/) {     # name:
qawk             gsub(/[^A-Za-z]+/, "", $0)  # remove all but name
qawk             relname[++nrel] = $0
qawk         } else if ($0 ~ /^[ \t]*!/)     # !command...
qawk             cmd[nrel, ++ncmd[nrel]] = substr($0,index($0,"!")+1)
qawk         else if ($0 ~ /^[ \t]*[A-Za-z]+[ \t]*$/)  # attribute
qawk             attr[nrel, $1] = ++nattr[nrel]
qawk         else if ($0 !~ /^[ \t]*$/)      # not white space
qawk             print "bad line in relfile:", $0
qawk }
qawk function doquery(s,   i,j) {
qawk     for (i in qattr)  # clean up for next query
qawk         delete qattr[i]
qawk     query = s    # put $names in query into qattr, without $
qawk     while (match(s, /\$[A-Za-z]+/)) {
qawk         qattr[substr(s, RSTART+1, RLENGTH-1)] = 1
qawk         s = substr(s, RSTART+RLENGTH+1)
qawk     }
qawk     for (i = 1; i <= nrel && !subset(qattr, attr, i); ) 
qawk         i++
qawk     if (i > nrel)     # didn't find a table with all attributes
qawk         missing(qattr)
qawk     else {            # table i contains attributes in query
qawk         for (j in qattr)   # create awk program
qawk             gsub("\\$" j, "$" attr[i,j], query)
qawk         for (j = 1; j <= ncmd[i]; j++)  # create table i
qawk             if (system(cmd[i, j]) != 0) {
qawk                 print "command failed, query skipped\n", cmd[i,j]
qawk                 return
qawk            }
qawk         awkcmd = sprintf("awk -F'\t' '%s' %s", query, relname[i])
qawk         printf("query: %s\n", awkcmd)   # for debugging
qawk         system(awkcmd)
qawk     }
qawk }
qawk function subset(q, a, r,   i) {  # is q a subset of a[r]?
qawk     for (i in q)
qawk         if (!((r,i) in a))
qawk             return 0
qawk     return 1
qawk }
qawk function missing(x,     i) {
qawk     print "no table contains all of the following attributes:"
qawk     for (i in x)
qawk         print i
qawk }
qawk1.ans # qawk - awk relational database query processor
qawk1.ans 
qawk1.ans BEGIN { readrel("relfile") }
qawk1.ans /./   { doquery($0) }
qawk1.ans 
qawk1.ans function readrel(f) {
qawk1.ans     while (getline <f > 0)   # parse relfile
qawk1.ans         if ($0 ~ /^[A-Za-z]+ *:/) {     # name:
qawk1.ans             gsub(/[^A-Za-z]+/, "", $0)  # remove all but name
qawk1.ans             relname[++nrel] = $0
qawk1.ans         } else if ($0 ~ /^[ \t]*!/)     # !command...
qawk1.ans             cmd[nrel, ++ncmd[nrel]] = substr($0,index($0,"!")+1)
qawk1.ans         else if ($0 ~ /^[ \t]*[A-Za-z]+[ \t]*$/)  # attribute
qawk1.ans             attr[nrel, $1] = ++nattr[nrel]
qawk1.ans         else if ($0 !~ /^[ \t]*$/)      # not white space
qawk1.ans             print "bad line in relfile:", $0
qawk1.ans }
qawk1.ans function doquery(s,   i,j,x) {
qawk1.ans     for (i in qattr)  # clean up for next query
qawk1.ans         delete qattr[i]
qawk1.ans     query = s    # put $names in query into qattr, without $
qawk1.ans     while (match(s, /\$[A-Za-z]+/)) {
qawk1.ans         qattr[substr(s, RSTART+1, RLENGTH-1)] = 1
qawk1.ans         s = substr(s, RSTART+RLENGTH+1)
qawk1.ans     }
qawk1.ans     for (i = 1; i <= nrel && !subset(qattr, attr, i); ) 
qawk1.ans         i++
qawk1.ans     if (i > nrel)     # didn't find a table with all attributes
qawk1.ans         missing(qattr)
qawk1.ans     else {            # table i contains attributes in query
qawk1.ans         for (j in qattr)   # create awk program
qawk1.ans             gsub("\\$" j, "$" attr[i,j], query)
qawk1.ans         if (!exists[i] && ncmd[i] > 0) {
qawk1.ans             for (j = 1; j <= ncmd[i]; j++)
qawk1.ans                 x = x cmd[i, j] "\n"
qawk1.ans             print "executing\n" x  # for debugging
qawk1.ans             if (system(x) != 0) { # create table i
qawk1.ans                     print "command failed, query skipped\n", x
qawk1.ans                     return
qawk1.ans                }
qawk1.ans             exists[i]++
qawk1.ans         }
qawk1.ans         awkcmd = sprintf("awk -F'\t' '%s' %s", query, relname[i])
qawk1.ans         printf("query: %s\n", awkcmd)   # for debugging
qawk1.ans         system(awkcmd)
qawk1.ans     }
qawk1.ans }
qawk1.ans function subset(q, a, r,   i) {  # is q a subset of a[r]?
qawk1.ans     for (i in q)
qawk1.ans         if (!((r,i) in a))
qawk1.ans             return 0
qawk1.ans     return 1
qawk1.ans }
qawk1.ans function missing(x,     i) {
qawk1.ans     print "no table contains all of the following attributes:"
qawk1.ans     for (i in x)
qawk1.ans         print i
qawk1.ans }
randint # randint - return random integer x, 1 <= x <= n
randint 
randint function randint(n) {
randint     return int(n * rand()) + 1
randint }
randlet # randlet - generate random lower-case letter
randlet 
randlet function randlet() {
randlet     return substr("abcdefghijklmnopqrstuvwxyz", randint(26), 1)
randlet }
choose # choose - print in order k random elements from A[1]..A[n]
choose 
choose function choose(A, k, n,    i) {
choose     for (i = 1; n > 0; i++)
choose         if (rand() < k/n--) {
choose             print A[i]
choose             k--
choose         }
choose }
comb.ans # print k distinct random integers between 1 and n
comb.ans 
comb.ans { random($1, $2) }
comb.ans 
comb.ans function random(k, n,    A, i, r) {
comb.ans     for (i = n-k+1; i <= n; i++)
comb.ans         ((r = randint(i)) in A) ? A[i] : A[r]
comb.ans     for (i in A)
comb.ans         print i
comb.ans }
comb.ans 
comb.ans function randint(n) { return int(n*rand())+1 }
bridge.ans # bridge - generate random bridge hands
bridge.ans 
bridge.ans BEGIN { split(permute(52,52), deck)           # generate a random deck
bridge.ans         sort(1,13); sort(14,26); sort(27,39); sort(40,52) # sort hands
bridge.ans         prhands()                    # format and print the four hands
bridge.ans }
bridge.ans 
bridge.ans function permute(k, n,    i, p, r) {   # generate a random permutation
bridge.ans     srand(); p = " "                   # of k integers between 1 and n
bridge.ans     for (i = n-k+1; i <= n; i++)
bridge.ans         if (p ~ " " (r = int(i*rand())+1) " " )
bridge.ans             sub(" " r " ", " " r " " i " ", p)    # put i after r in p
bridge.ans         else p = " " r p                     # put r at beginning of p
bridge.ans     return p
bridge.ans }
bridge.ans 
bridge.ans function sort(left,right,    i,j,t) { # sort hand in deck[left..right]
bridge.ans     for (i = left+1; i <= right; i++)
bridge.ans         for (j = i; j > left && deck[j-1] < deck[j]; j--) {
bridge.ans             t = deck[j-1]; deck[j-1] = deck[j]; deck[j] = t
bridge.ans         }
bridge.ans }
bridge.ans 
bridge.ans function prhands() {                            # print the four hands
bridge.ans     b = sprintf("%20s", " "); b40 = sprintf("%40s", " ")
bridge.ans     card = 1                                  # global index into deck
bridge.ans     suits(13); print b "   NORTH"
bridge.ans     print b spds; print b hrts; print b dnds; print b clbs
bridge.ans     suits(26)  # create the west hand from deck[14..26]
bridge.ans     ws = spds substr(b40, 1, 40 - length(spds))
bridge.ans     wh = hrts substr(b40, 1, 40 - length(hrts))
bridge.ans     wd = dnds substr(b40, 1, 40 - length(dnds))
bridge.ans     wc = clbs substr(b40, 1, 40 - length(clbs))
bridge.ans     suits(39); print "   WEST" sprintf("%36s", " ") "EAST"
bridge.ans     print ws spds; print wh hrts; print wd dnds; print wc clbs
bridge.ans     suits(52); print b "   SOUTH"
bridge.ans     print b spds; print b hrts; print b dnds; print b clbs
bridge.ans }
bridge.ans 
bridge.ans function suits(j) {           # collect suits of hand in deck[j-12..j]
bridge.ans     for (spds = "S:"; deck[card] > 39 && card <= j; card++)
bridge.ans         spds = spds " " fvcard(deck[card])
bridge.ans     for (hrts = "H:"; deck[card] > 26 && card <= j; card++)
bridge.ans         hrts = hrts " " fvcard(deck[card])
bridge.ans     for (dnds = "D:"; deck[card] > 13 && card <= j; card++)
bridge.ans         dnds = dnds " " fvcard(deck[card])
bridge.ans     for (clbs = "C:"; card <= j; card++)
bridge.ans         clbs = clbs " " fvcard(deck[card])
bridge.ans }
bridge.ans 
bridge.ans function fvcard(i) {                    # compute face value of card i
bridge.ans     if (i % 13 == 0) return "A"
bridge.ans     else if (i % 13 == 12) return "K"
bridge.ans     else if (i % 13 == 11) return "Q"
bridge.ans     else if (i % 13 == 10) return "J"
bridge.ans     else return (i % 13) + 1
bridge.ans }
cliche # cliche - generate an endless stream of cliches
cliche #     input:  lines of form subject:predicate
cliche #     output: lines of random subject and random predicate
cliche 
cliche BEGIN { FS = ":" }
cliche       { x[NR] = $1; y[NR] = $2 }
cliche END   { for (;;) print x[randint(NR)], y[randint(NR)] }
cliche 
cliche function randint(n) { return int(n * rand()) + 1 }
grammar Sentence -> Nounphrase Verbphrase
grammar Nounphrase -> the boy
grammar Nounphrase -> the girl
grammar Verbphrase -> Verb Modlist Adverb
grammar Verb -> runs
grammar Verb -> walks
grammar Modlist ->
grammar Modlist -> very Modlist
grammar Adverb -> quickly
grammar Adverb -> slowly
sentgen # sentgen - random sentence generator
sentgen #   input:  grammar file; sequence of nonterminals
sentgen #   output: a random sentence for each nonterminal
sentgen 
sentgen BEGIN {  # read rules from grammar file
sentgen     while (getline < "grammar" > 0)
sentgen         if ($2 == "->") {
sentgen             i = ++lhs[$1]              # count lhs
sentgen             rhscnt[$1, i] = NF-2       # how many in rhs
sentgen             for (j = 3; j <= NF; j++)  # record them
sentgen                rhslist[$1, i, j-2] = $j
sentgen         } else
sentgen             print "illegal production: " $0
sentgen }
sentgen 
sentgen {   if ($1 in lhs) {  # nonterminal to expand
sentgen         gen($1)
sentgen         printf("\n")
sentgen     } else 
sentgen         print "unknown nonterminal: " $0   
sentgen }
sentgen 
sentgen function gen(sym,    i, j) {
sentgen     if (sym in lhs) {       # a nonterminal
sentgen         i = int(lhs[sym] * rand()) + 1   # random production
sentgen         for (j = 1; j <= rhscnt[sym, i]; j++) # expand rhs's
sentgen             gen(rhslist[sym, i, j])
sentgen     } else
sentgen         printf("%s ", sym)
sentgen }
sentgen1 # sentgen1 - random sentence generator with probabilities
sentgen1 #   input:  grammar file; sequence of nonterminals
sentgen1 #   output: random sentences generated by the grammar
sentgen1 
sentgen1 BEGIN {  # read rules from grammar file
sentgen1     while (getline < "test-gram" > 0)
sentgen1         if ($2 == "->") {
sentgen1             i = ++lhs[$1]              # count lhs
sentgen1             rhsprob[$1, i] = $NF       # 0 <= probability <= 1
sentgen1             rhscnt[$1, i] = NF-3       # how many in rhs
sentgen1             for (j = 3; j < NF; j++)   # record them
sentgen1                rhslist[$1, i, j-2] = $j
sentgen1         } else
sentgen1             print "illegal production: " $0
sentgen1     for (sym in lhs)
sentgen1         for (i = 2; i <= lhs[sym]; i++)
sentgen1             rhsprob[sym, i] += rhsprob[sym, i-1]
sentgen1 }
sentgen1 
sentgen1 {   if ($1 in lhs) {  # nonterminal to expand
sentgen1         gen($1)
sentgen1         printf("\n")
sentgen1     } else 
sentgen1         print "unknown nonterminal: " $0   
sentgen1 }
sentgen1 
sentgen1 function gen(sym,    i, j) {
sentgen1     if (sym in lhs) {       # a nonterminal
sentgen1         j = rand()          # random production
sentgen1         for (i = 1; i <= lhs[sym] && j > rhsprob[sym, i]; i++)
sentgen1             ;
sentgen1         for (j = 1; j <= rhscnt[sym, i]; j++) # expand rhs's
sentgen1             gen(rhslist[sym, i, j])
sentgen1     } else
sentgen1         printf("%s ", sym)
sentgen1 }
sentgen2 # sentgen2 - random sentence generator (nonrecursive)
sentgen2 #   input:  grammar file; sequence of nonterminals
sentgen2 #   output: random sentences generated by the grammar
sentgen2 
sentgen2 BEGIN {  # read rules from grammar file
sentgen2     while (getline < "grammar" > 0)
sentgen2         if ($2 == "->") {
sentgen2             i = ++lhs[$1]              # count lhs
sentgen2             rhscnt[$1, i] = NF-2       # how many in rhs
sentgen2             for (j = 3; j <= NF; j++)  # record them
sentgen2                rhslist[$1, i, j-2] = $j
sentgen2         } else
sentgen2             print "illegal production: " $0
sentgen2 }
sentgen2 
sentgen2 {   if ($1 in lhs) {  # nonterminal to expand
sentgen2         push($1)
sentgen2         gen()
sentgen2         printf("\n")
sentgen2     } else 
sentgen2         print "unknown nonterminal: " $0   
sentgen2 }
sentgen2 
sentgen2 function gen(    i, j) {
sentgen2     while (stp >= 1) {
sentgen2         sym = pop()
sentgen2         if (sym in lhs) {       # a nonterminal
sentgen2             i = int(lhs[sym] * rand()) + 1   # random production
sentgen2             for (j = rhscnt[sym, i]; j >= 1; j--) # expand rhs's
sentgen2                 push(rhslist[sym, i, j])
sentgen2         } else
sentgen2             printf("%s ", sym)
sentgen2     }
sentgen2 }
sentgen2 
sentgen2 function push(s) { stack[++stp] = s }
sentgen2 
sentgen2 function pop() { return stack[stp--] }
arith # arith - addition drill
arith #   usage:  awk -f arith [ optional problem size ]
arith #   output: queries of the form "i + j = ?"
arith 
arith BEGIN {
arith     maxnum = ARGC > 1 ? ARGV[1] : 10   # default size is 10
arith     ARGV[1] = "-"  # read standard input subsequently
arith     srand()        # reset rand from time of day
arith     do {
arith         n1 = randint(maxnum)
arith         n2 = randint(maxnum)
arith         printf("%g + %g = ? ", n1, n2)
arith         while ((input = getline) > 0)
arith             if ($0 == n1 + n2) {
arith                 print "Right!"
arith                 break
arith             } else if ($0 == "") {
arith                 print n1 + n2
arith                 break
arith             } else
arith                 printf("wrong, try again: ")
arith     } while (input > 0)
arith }
arith 
arith function randint(n) { return int(rand()*n)+1 }
quiz.elems symbol:number:name|element
quiz.elems H:1:Hydrogen
quiz.elems He:2:Helium
quiz.elems Li:3:Lithium
quiz.elems Be:4:Beryllium
quiz.elems B:5:Boron
quiz.elems C:6:Carbon
quiz.elems N:7:Nitrogen
quiz.elems O:8:Oxygen
quiz.elems F:9:Fluorine
quiz.elems Ne:10:Neon
quiz.elems Na:11:Sodium|Natrium
quiz.elems Mg:12:Magnesium
quiz.elems Al:13:Aluminum
quiz.elems Si:14:Silicon
quiz.elems P:15:Phosphorus
quiz.elems S:16:Sulphur|Sulfur
quiz.elems Cl:17:Chlorine
quiz.elems Ar:18:Argon
quiz.elems K:19:Potassium|Kalium
quiz.elems Ca:20:Calcium
quiz.elems Sc:21:Scandium
quiz.elems Ti:22:Titanium
quiz.elems V:23:Vanadium
quiz.elems Cr:24:Chromium
quiz.elems Mn:25:Manganese
quiz.elems Fe:26:Iron|Ferrum
quiz.elems Co:27:Cobalt
quiz.elems Ni:28:Nickel
quiz.elems Cu:29:Copper|Cuprum
quiz.elems Zn:30:Zinc
quiz.elems Ga:31:Gallium
quiz.elems Ge:32:Germanium
quiz.elems As:33:Arsenic
quiz.elems Se:34:Selenium
quiz.elems Br:35:Bromine
quiz.elems Kr:36:Krypton
quiz.elems Rb:37:Rubidium
quiz.elems Sr:38:Strontium
quiz.elems Y:39:Yttrium
quiz.elems Zr:40:Zirconium
quiz.elems Nb:41:Niobium
quiz.elems Mo:42:Molybdenum
quiz.elems Tc:43:Technetium
quiz.elems Ru:44:Ruthenium
quiz.elems Rh:45:Rhodium
quiz.elems Pd:46:Palladium
quiz.elems Ag:47:Silver|Argentum
quiz.elems Cd:48:Cadmium
quiz.elems In:49:Indium
quiz.elems Sn:50:Tin|Stannum
quiz.elems Sb:51:Antimony|Stibium
quiz.elems Te:52:Tellurium
quiz.elems I:53:Iodine
quiz.elems Xe:54:Xenon
quiz.elems Cs:55:Cesium
quiz.elems Ba:56:Barium
quiz.elems La:57:Lanthanum
quiz.elems Ce:58:Cerium
quiz.elems Pr:59:Praseodymium
quiz.elems Nd:60:Neodymium
quiz.elems Pm:61:Promethium
quiz.elems Sm:62:Samarium
quiz.elems Eu:63:Europium
quiz.elems Gd:64:Gadolinium
quiz.elems Tb:65:Terbium
quiz.elems Dy:66:Dysprosium
quiz.elems Ho:67:Holmium
quiz.elems Er:68:Erbium
quiz.elems Tm:69:Thulium
quiz.elems Yb:70:Ytterbium
quiz.elems Lu:71:Lutetium
quiz.elems Hf:72:Hafnium
quiz.elems Ta:73:Tantalum
quiz.elems W:74:Tungsten|Wolfram
quiz.elems Re:75:Rhenium
quiz.elems Os:76:Osmium
quiz.elems Ir:77:Iridium
quiz.elems Pt:78:Platinum
quiz.elems Au:79:Gold|Aurum
quiz.elems Hg:80:Mercury
quiz.elems Tl:81:Thallium
quiz.elems Pb:82:Lead|Plumbum
quiz.elems Bi:83:Bismuth
quiz.elems Po:84:Polonium
quiz.elems At:85:Astatine
quiz.elems Rn:86:Radon
quiz.elems Fr:87:Francium
quiz.elems Ra:88:Radium
quiz.elems Ac:89:Actinium
quiz.elems Th:90:Thorium
quiz.elems Pa:91:Protactinium
quiz.elems U:92:Uranium
quiz.elems Np:93:Neptunium
quiz.elems Pu:94:Plutonium
quiz.elems Am:95:Americium
quiz.elems Cm:96:Curium
quiz.elems Bk:97:Berkelium
quiz.elems Cf:98:Californium
quiz.elems Es:99:Einsteinium
quiz.elems Fm:100:Fermium
quiz.elems Md:101:Mendelevium
quiz.elems No:102:Nobelium
quiz.elems Lw:103:Lawrencium
quiz # quiz - present a quiz
quiz #   usage: awk -f quiz topicfile question-subj answer-subj
quiz 
quiz BEGIN {
quiz     FS = ":"
quiz     if (ARGC != 4)
quiz         error("usage: awk -f quiz topicfile question answer")
quiz     if (getline <ARGV[1] < 0)    # 1st line is subj:subj:...
quiz         error("no such quiz as " ARGV[1])
quiz     for (q = 1; q <= NF; q++)
quiz         if ($q ~ ARGV[2])
quiz             break
quiz     for (a = 1; a <= NF; a++)
quiz         if ($a ~ ARGV[3])
quiz             break
quiz     if (q > NF || a > NF || q == a)
quiz         error("valid subjects are " $0)
quiz     while (getline <ARGV[1] > 0) # load the quiz
quiz         qa[++nq] = $0
quiz     ARGC = 2; ARGV[1] = "-"      # now read standard input
quiz     srand()
quiz     do {
quiz         split(qa[int(rand()*nq + 1)], x)
quiz         printf("%s? ", x[q])
quiz         while ((input = getline) > 0)
quiz             if ($0 ~ "^(" x[a] ")$") {
quiz                 print "Right!"
quiz                 break
quiz             } else if ($0 == "") {
quiz                 print x[a]
quiz                 break
quiz             } else
quiz                 printf("wrong, try again: ")
quiz     } while (input > 0)
quiz }
quiz 
quiz function error(s) { printf("error: %s\n", s); exit }
wordfreq # wordfreq - print number of occurrences of each word
wordfreq #   input:  text
wordfreq #   output: number-word pairs sorted by number
wordfreq 
wordfreq     { gsub(/[.,:;!?(){}]/, "")    # remove punctuation
wordfreq       for (i = 1; i <= NF; i++)
wordfreq           count[$i]++
wordfreq     }
wordfreq END { for (w in count)
wordfreq           print count[w], w | "sort -rn"
wordfreq     }
fmt # fmt - format
fmt #    input:  text
fmt #    output: text formatted into lines of <= 60 characters
fmt 
fmt /./  { for (i = 1; i <= NF; i++) addword($i) }
fmt /^$/ { printline(); print "" }
fmt END  { printline() }
fmt 
fmt function addword(w) {
fmt     if (length(line) + length(w) > 60)
fmt         printline()
fmt     line = line " " w
fmt }
fmt 
fmt function printline() {
fmt     if (length(line) > 0) {
fmt         print substr(line, 2)   # removes leading blank
fmt         line = ""
fmt     }
fmt }
fmt.just # fmt.just - formatter with right justification
fmt.just 
fmt.just BEGIN { blanks = sprintf("%60s", " ") }
fmt.just /./   { for (i = 1; i <= NF; i++) addword($i) }
fmt.just /^$/  { printline("no"); print "" }
fmt.just END   { printline("no") }
fmt.just 
fmt.just function addword(w) {
fmt.just     if (cnt + size + length(w) > 60)
fmt.just         printline("yes")
fmt.just     line[++cnt] = w
fmt.just     size += length(w)
fmt.just }
fmt.just 
fmt.just function printline(f,    i, nb, nsp, holes) {
fmt.just     if (f == "no" || cnt == 1) {
fmt.just         for (i = 1; i <= cnt; i++)
fmt.just             printf("%s%s", line[i], i < cnt ? " " : "\n")
fmt.just     } else if (cnt > 1) {
fmt.just         dir = 1 - dir        # alternate side for extra blanks
fmt.just         nb = 60 - size       # number of blanks needed
fmt.just         holes = cnt - 1      # holes
fmt.just         for (i = 1; holes > 0; i++) {
fmt.just             nsp = int((nb-dir) / holes) + dir
fmt.just             printf("%s%s", line[i], substr(blanks, 1, nsp))
fmt.just             nb -= nsp
fmt.just             holes--
fmt.just         }
fmt.just         print line[cnt]
fmt.just     }
fmt.just     size = cnt = 0
fmt.just }
xref.data .#Fig _quotes_
xref.data Figure _quotes_ gives two brief quotations from famous books.
xref.data 
xref.data                         Figure _quotes_:
xref.data 
xref.data .#Bib _alice_
xref.data   "... `and what is the use of a book,' thought Alice,
xref.data   `without pictures or conversations?'" [_alice_]
xref.data 
xref.data .#Bib _huck_
xref.data   "... if I'd a knowed what a trouble it was to make a book
xref.data   I wouldn't a tackled it and ain't agoing to no more." [_huck_]
xref.data 
xref.data 
xref.data [_alice_] Carroll, L., Alice's Adventures in Wonderland,
xref.data     Macmillan, 1865.
xref.data [_huck_] Twain, M., Adventures of Huckleberry Finn,
xref.data     Webster & Co., 1885.
xref # xref - create numeric values for symbolic names
xref #    input:  text with definitions for symbolic names
xref #    output: awk program to replace symbolic names by numbers          
xref 
xref /^\.#/ { printf("{ gsub(/%s/, \"%d\") }\n", $2, ++count[$1]) }
xref END    { printf("!/^[.]#/\n") }
xref.ans /^\.#/ { printf("{ gsub(/%s/, \"%d\") }\n", $2, ++count[$1])
xref.ans          if (saw[$2])
xref.ans              print NR ": redefinition of", $2, "from line", saw[$2]
xref.ans          saw[$2] = NR
xref.ans        }
xref.ans END    { printf("!/^[.]#/\n") }
xref1.ans /^\.#/ { s[$2] = ++count[$1]; next }
xref1.ans        { for (i in s)
xref1.ans              gsub(i, s[i])
xref1.ans          print
xref1.ans        }
say.in.kwic All's well that ends well.
say.in.kwic Nature abhors a vacuum.
say.in.kwic Every man has a price.
kwic awk '
kwic # kwic - generate kwic index
kwic 
kwic {   print $0
kwic     for (i = length($0); i > 0; i--) # compute length only once
kwic         if (substr($0,i,1) == " ")
kwic             # prefix space suffix ==> suffix tab prefix
kwic             print substr($0,i+1) "\t" substr($0,1,i-1)
kwic } ' |
kwic sort -f |
kwic awk '
kwic BEGIN { FS = "\t"; WID = 30 }
kwic       { printf("%" WID "s  %s\n", substr($2,length($2)-WID+1),
kwic             substr($1,1,WID))
kwic } '
kwic.ans awk '
kwic.ans # kwic - generate kwic index
kwic.ans 
kwic.ans {   print $0
kwic.ans     for (i = length($0); i > 0; i--) # compute length only once
kwic.ans         if (substr($0,i,1) == " ")
kwic.ans             # prefix space suffix ==> suffix tab prefix
kwic.ans             print substr($0,i+1) "\t" substr($0,1,i-1)
kwic.ans } ' |
kwic.ans awk '$1 !~ /^(a|an|and|by|for|if|in|is|of|on|the|to)$/' |
kwic.ans sort -f |
kwic.ans awk '
kwic.ans BEGIN { FS = "\t"; WID = 30 }
kwic.ans       { printf "%" WID "s  %s\n", substr($2,length($2)-WID+1),
kwic.ans             substr($1,1,WID)
kwic.ans } '
ix.raw [FS] variable	35
ix.raw [FS] variable	36
ix.raw arithmetic operators	36
ix.raw coercion rules	44
ix.raw string comparison	44
ix.raw numeric comparison	44
ix.raw arithmetic operators	44
ix.raw coercion~to number	45
ix.raw coercion~to string	45
ix.raw [if]-[else] statement	47
ix.raw control-flow statements	48
ix.raw [FS] variable	52
ix.collapse # ix.collapse - combine number lists for identical terms
ix.collapse #   input:  string tab num \n string tab num ...
ix.collapse #   output: string tab num num ...
ix.collapse 
ix.collapse BEGIN { FS = OFS = "\t" }
ix.collapse $1 != prev {
ix.collapse     if (NR > 1)
ix.collapse         printf("\n")
ix.collapse     prev = $1
ix.collapse     printf("%s\t%s", $1, $2)
ix.collapse     next
ix.collapse }
ix.collapse     { printf(" %s", $2) }
ix.collapse 
ix.collapse END { if (NR > 1) printf("\n") }
ix.rotate # ix.rotate - generate rotations of index terms
ix.rotate #   input:  string tab num num ...
ix.rotate #   output: rotations of string tab num num ...
ix.rotate 
ix.rotate BEGIN { FS = OFS = "\t" }
ix.rotate {   print $1, $2    # unrotated form
ix.rotate     for (i = 1; (j = index(substr($1, i+1), " ")) > 0; ) {
ix.rotate         i += j      # find each blank, rotate around it
ix.rotate         printf("%s, %s\t%s\n",
ix.rotate             substr($1, i+1), substr($1, 1, i-1), $2)
ix.rotate     }
ix.rotate }
ix.genkey # ix.genkey - generate sort key to force ordering
ix.genkey #   input:  string tab num num ...
ix.genkey #   output: sort key tab string tab num num ...
ix.genkey 
ix.genkey BEGIN { FS = OFS = "\t" }
ix.genkey 
ix.genkey {   gsub(/~/, " ", $1)       # tildes now become blanks
ix.genkey     key = $1
ix.genkey     # remove troff size and font change commands from key
ix.genkey     gsub(/\\f.|\\f\(..|\\s[-+][0-9]/, "", key)
ix.genkey     # keep blanks, letters, digits only
ix.genkey     gsub(/[^a-zA-Z0-9 ]+/, "", key)
ix.genkey     if (key ~ /^[^a-zA-Z]/)  # force nonalpha to sort first
ix.genkey         key = " " key        # by prefixing a blank
ix.genkey     print key, $1, $2
ix.genkey } 
ix.sort1 # ix.sort1 - sort by index term, then by page number
ix.sort1 #     input/output: lines of the form string tab number
ix.sort1 #     sort by string, then by number; discard duplicates
ix.sort1 
ix.sort1 sort -t'	' +0 -1 +1n -2 -u
ix.sort2 # ix.sort2 - sort by sort key
ix.sort2 #     input/output: sort-key tab string tab num num ...
ix.sort2 
ix.sort2 sort -f -d
ix.format # ix.format - remove key, restore size and font commands
ix.format #   input:  sort key tab string tab num num ...
ix.format #   output: troff format, ready to print
ix.format 
ix.format BEGIN { FS = "\t" }
ix.format 
ix.format {   gsub(/ /, ", ", $3)        # commas between page numbers
ix.format     gsub(/\[/, "\\f(CW", $2)   # set constant-width font
ix.format     gsub(/\]/, "\\fP", $2)     # restore previous font
ix.format     print ".XX"                # user-definable command
ix.format     printf("%s  %s\n", $2, $3) # actual index entry
ix.format }
indall sh ix.sort1 |
indall awk -f ix.collapse |
indall awk -f ix.rotate |
indall awk -f ix.genkey |
indall sh ix.sort2 |
indall awk -f ix.format
sum.asm # print sum of input numbers (terminated by zero)
sum.asm 
sum.asm      ld    zero   # initialize sum to zero
sum.asm      st    sum
sum.asm loop get          # read a number
sum.asm      jz    done   # no more input if number is zero
sum.asm      add   sum    # add in accumulated sum
sum.asm      st    sum    # store new value back in sum
sum.asm      j     loop   # go back and read another number
sum.asm 
sum.asm done ld    sum    # print sum
sum.asm      put
sum.asm      halt
sum.asm 
sum.asm zero const 0
sum.asm sum  const
asm # asm - assembler and interpreter for simple computer
asm #   usage: awk -f asm program-file data-files...
asm 
asm BEGIN {
asm     srcfile = ARGV[1]
asm     ARGV[1] = ""  # remaining files are data
asm     tempfile = "asm.temp"
asm     n = split("const get put ld st add sub jpos jz j halt", x)
asm     for (i = 1; i <= n; i++)   # create table of op codes
asm         op[x[i]] = i-1
asm 
asm # ASSEMBLER PASS 1
asm     FS = "[ \t]+"
asm     while (getline <srcfile > 0) {
asm         sub(/#.*/, "")         # strip comments
asm         symtab[$1] = nextmem   # remember label location
asm         if ($2 != "") {        # save op, addr if present
asm             print $2 "\t" $3 >tempfile
asm             nextmem++
asm         }
asm     }
asm     close(tempfile)
asm 
asm # ASSEMBLER PASS 2
asm     nextmem = 0
asm     while (getline <tempfile > 0) {
asm         if ($2 !~ /^[0-9]*$/)  # if symbolic addr,
asm             $2 = symtab[$2]    # replace by numeric value
asm         mem[nextmem++] = 1000 * op[$1] + $2  # pack into word
asm     }
asm 
asm # INTERPRETER
asm     for (pc = 0; pc >= 0; ) {
asm         addr = mem[pc] % 1000
asm         code = int(mem[pc++] / 1000)
asm         if      (code == op["get"])  { getline acc }
asm         else if (code == op["put"])  { print acc }
asm         else if (code == op["st"])   { mem[addr] = acc }
asm         else if (code == op["ld"])   { acc  = mem[addr] }
asm         else if (code == op["add"])  { acc += mem[addr] }
asm         else if (code == op["sub"])  { acc -= mem[addr] }
asm         else if (code == op["jpos"]) { if (acc >  0) pc = addr }
asm         else if (code == op["jz"])   { if (acc == 0) pc = addr }
asm         else if (code == op["j"])    { pc = addr }
asm         else if (code == op["halt"]) { pc = -1 }
asm         else                         { pc = -1 }
asm     }
asm }
asm.print # asm - assembler and interpreter for simple computer
asm.print #   usage: awk -f asm program-file data-files...
asm.print 
asm.print # this is a special version to produce a listing
asm.print 
asm.print BEGIN {
asm.print     srcfile = ARGV[1]
asm.print     ARGV[1] = ""  # remaining files are data
asm.print     tempfile = "asm.temp"
asm.print     n = split("const get put ld st add sub jpos jz j halt", x)
asm.print     for (i = 1; i <= n; i++)   # create table of op codes
asm.print         op[x[i]] = i-1
asm.print 
asm.print # ASSEMBLER PASS 1
asm.print     nextmem = 0    # new
asm.print     FS = "[ \t]+"
asm.print     while (getline <srcfile > 0) {
asm.print         input[nextmem] = $0    # new: remember source line
asm.print         sub(/#.*/, "")         # strip comments
asm.print         symtab[$1] = nextmem   # remember label location
asm.print         if ($2 != "") {        # save op, addr if present
asm.print             print $2 "\t" $3 >tempfile
asm.print             nextmem++
asm.print         }
asm.print     }
asm.print     close(tempfile)
asm.print 
asm.print # ASSEMBLER PASS 2
asm.print     nextmem = 0
asm.print     while (getline <tempfile > 0) {
asm.print         if ($2 !~ /^[0-9]*$/)  # if symbolic addr,
asm.print             $2 = symtab[$2]    # replace by numeric value
asm.print         mem[nextmem++] = 1000 * op[$1] + $2  # pack into word
asm.print     }
asm.print     for (i = 0; i < nextmem; i++)    # new: print memory
asm.print         printf("%3d:  %05d   %s\n", i, mem[i], input[i])  # new
asm.print }
graph # graph - processor for a graph-drawing language
graph #   input:  data and specification of a graph
graph #   output: data plotted in specified area
graph 
graph BEGIN {                # set frame dimensions...
graph     ht = 24; wid = 80  # height and width
graph     ox = 6; oy = 2     # offset for x and y axes
graph     number = "^[-+]?([0-9]+[.]?[0-9]*|[.][0-9]+)" \
graph                             "([eE][-+]?[0-9]+)?$"
graph }
graph $1 == "label" {                       # for bottom
graph     sub(/^ *label */, "")
graph     botlab = $0
graph     next
graph }
graph $1 == "bottom" && $2 == "ticks" {     # ticks for x-axis
graph     for (i = 3; i <= NF; i++) bticks[++nb] = $i
graph     next
graph }
graph $1 == "left" && $2 == "ticks" {       # ticks for y-axis
graph     for (i = 3; i <= NF; i++) lticks[++nl] = $i
graph     next
graph }
graph $1 == "range" {                       # xmin ymin xmax ymax
graph     xmin = $2; ymin = $3; xmax = $4; ymax = $5
graph     next
graph }
graph $1 == "height" { ht = $2; next }
graph $1 == "width"  { wid = $2; next }
graph $1 ~ number && $2 ~ number {          # pair of numbers
graph     nd++    # count number of data points
graph     x[nd] = $1; y[nd] = $2
graph     ch[nd] = $3    # optional plotting character
graph     next
graph }
graph $1 ~ number && $2 !~ number {         # single number
graph     nd++    # count number of data points
graph     x[nd] = nd; y[nd] = $1; ch[nd] = $2
graph     next
graph }
graph END {    # draw graph
graph     if (xmin == "") {         # no range was given
graph         xmin = xmax = x[1]    # so compute it
graph         ymin = ymax = y[1]
graph         for (i = 2; i <= nd; i++) {
graph             if (x[i] < xmin) xmin = x[i]
graph             if (x[i] > xmax) xmax = x[i]
graph             if (y[i] < ymin) ymin = y[i]
graph             if (y[i] > ymax) ymax = y[i]
graph         }
graph     }
graph     frame(); ticks(); label(); data(); draw()
graph }
graph function frame() {        # create frame for graph
graph     for (i = ox; i < wid; i++) plot(i, oy, "-")     # bottom
graph     for (i = ox; i < wid; i++) plot(i, ht-1, "-")   # top
graph     for (i = oy; i < ht; i++) plot(ox, i, "|")      # left
graph     for (i = oy; i < ht; i++) plot(wid-1, i, "|")   # right
graph }
graph function ticks(    i) {   # create tick marks for both axes
graph     for (i = 1; i <= nb; i++) {
graph         plot(xscale(bticks[i]), oy, "|")
graph         splot(xscale(bticks[i])-1, 1, bticks[i])
graph     }
graph     for (i = 1; i <= nl; i++) {
graph         plot(ox, yscale(lticks[i]), "-")
graph         splot(0, yscale(lticks[i]), lticks[i])
graph     }
graph }
graph function label() {        # center label under x-axis
graph     splot(int((wid + ox - length(botlab))/2), 0, botlab)
graph }
graph function data(    i) {    # create data points
graph     for (i = 1; i <= nd; i++)
graph         plot(xscale(x[i]),yscale(y[i]),ch[i]=="" ? "*" : ch[i])
graph }
graph function draw(    i, j) { # print graph from array
graph     for (i = ht-1; i >= 0; i--) {
graph         for (j = 0; j < wid; j++)
graph             printf((j,i) in array ? array[j,i] : " ")
graph         printf("\n")
graph     }
graph }
graph function xscale(x) {      # scale x-value
graph     return int((x-xmin)/(xmax-xmin) * (wid-1-ox) + ox + 0.5)
graph }
graph function yscale(y) {      # scale y-value
graph     return int((y-ymin)/(ymax-ymin) * (ht-1-oy) + oy + 0.5)
graph }
graph function plot(x, y, c) {  # put character c in array
graph     array[x,y] = c
graph }
graph function splot(x, y, s,    i, n) { # put string s in array
graph     n = length(s)
graph     for (i = 0; i < n; i++)
graph         array[x+i, y] = substr(s, i+1, 1)
graph }
transpose # transpose - input and output suitable for graph
transpose #   input:  data and specification of a graph
transpose #   output: data and specification for the transposed graph
transpose 
transpose BEGIN {
transpose     number = "^[-+]?([0-9]+[.]?[0-9]*|[.][0-9]+)" \
transpose                             "([eE][-+]?[0-9]+)?$"
transpose }
transpose $1 == "bottom" && $2 == "ticks" {     # ticks for x-axis
transpose     $1 = "left"
transpose     print
transpose     next
transpose }
transpose $1 == "left" && $2 == "ticks" {       # ticks for y-axis
transpose     $1 = "bottom"
transpose     print
transpose     next
transpose }
transpose $1 == "range" {                       # xmin ymin xmax ymax
transpose     print $1, $3, $2, $5, $4
transpose     next
transpose }
transpose $1 == "height" { $1 = "width"; print; next }
transpose $1 == "width"  { $1 = "height"; print; next }
transpose $1 ~ number && $2 ~ number  { nd++; print $2, $1, $3; next }
transpose $1 ~ number && $2 !~ number { # single number:
transpose     nd++                      #   count data points
transpose     print $1, nd, $2          #   fill in both x and y
transpose     next
transpose }
transpose { print }
sortgen0.in descending numeric order
sortgen.in field separator is :
sortgen.in primary key is field 1
sortgen.in    increasing alphabetic
sortgen.in secondary key is field 5
sortgen.in    reverse numeric
sortgen # sortgen - generate sort command
sortgen #   input:  sequence of lines describing sorting options
sortgen #   output: Unix sort command with appropriate arguments
sortgen 
sortgen BEGIN { key = 0 }
sortgen 
sortgen /no |not |n't / { print "error: can't do negatives:", $0; ok = 1 }
sortgen 
sortgen # rules for global options
sortgen         { ok = 0 }
sortgen /uniq|discard.*(iden|dupl)/  { uniq = " -u"; ok = 1 }
sortgen /separ.*tab|tab.*sep/        { sep = "t'\t'"; ok = 1 }
sortgen /separ/ { for (i = 1; i <= NF; i++)
sortgen               if (length($i) == 1)
sortgen                   sep = "t'" $i "'"
sortgen           ok = 1
sortgen         }
sortgen /key/   { key++; dokey(); ok = 1 } # new key; must come in order
sortgen 
sortgen # rules for each key
sortgen 
sortgen /dict/                            { dict[key] = "d"; ok = 1 }
sortgen /ignore.*(space|blank)/           { blank[key] = "b"; ok = 1 }
sortgen /fold|case/                       { fold[key] = "f"; ok = 1 }
sortgen /num/                             { num[key] = "n"; ok = 1 }
sortgen /rev|descend|decreas|down|oppos/  { rev[key] = "r"; ok = 1 }
sortgen /forward|ascend|increas|up|alpha/ { next }    # this is sort's default
sortgen !ok   { print "error: can't understand:", $0 }
sortgen 
sortgen END {                        # print flags for each key
sortgen     cmd = "sort" uniq
sortgen     flag = dict[0] blank[0] fold[0] rev[0] num[0] sep
sortgen     if (flag) cmd = cmd " -" flag
sortgen     for (i = 1; i <= key; i++)
sortgen         if (pos[i] != "") {
sortgen             flag = pos[i] dict[i] blank[i] fold[i] rev[i] num[i]
sortgen             if (flag) cmd = cmd " +" flag
sortgen             if (pos2[i]) cmd = cmd " -" pos2[i]
sortgen         }
sortgen     print cmd
sortgen }
sortgen 
sortgen function dokey(    i) {      # determine position of key
sortgen     for (i = 1; i <= NF; i++)
sortgen         if ($i ~ /^[0-9]+$/) {
sortgen             pos[key] = $i - 1    # sort uses 0-origin
sortgen             break
sortgen         }
sortgen     for (i++; i <= NF; i++)
sortgen         if ($i ~ /^[0-9]+$/) {
sortgen             pos2[key] = $i
sortgen             break
sortgen         }
sortgen     if (pos[key] == "")
sortgen         printf("error: invalid key specification: %s\n", $0)
sortgen     if (pos2[key] == "")
sortgen         pos2[key] = pos[key] + 1
sortgen }
calc1 # calc1 - reverse-Polish calculator, version 1
calc1 #   input:  arithmetic expressions in reverse Polish
calc1 #   output: values of expressions
calc1 
calc1 {   for (i = 1; i <= NF; i++)
calc1         if ($i ~ /^[+-]?([0-9]+[.]?[0-9]*|[.][0-9]+)$/) {
calc1             stack[++top] = $i
calc1         } else if ($i == "+" && top > 1) {
calc1             stack[top-1] += stack[top]; top--
calc1         } else if ($i == "-" && top > 1) {
calc1             stack[top-1] -= stack[top]; top--
calc1         } else if ($i == "*" && top > 1) {
calc1             stack[top-1] *= stack[top]; top--
calc1         } else if ($i == "/" && top > 1) {
calc1             stack[top-1] /= stack[top]; top--
calc1         } else if ($i == "^" && top > 1) {
calc1             stack[top-1] ^= stack[top]; top--
calc1         } else {
calc1             printf("error: cannot evaluate %s\n", $i)
calc1             top = 0
calc1             next
calc1         }
calc1     if (top == 1)
calc1         printf("\t%.8g\n", stack[top--])
calc1     else if (top > 1) {
calc1         printf("error: too many operands\n")
calc1         top = 0
calc1     }
calc1 }
calc2 # calc2 - reverse-Polish calculator, version 2
calc2 #     input:  expressions in reverse Polish
calc2 #     output: value of each expression
calc2 
calc2 { for (i = 1; i <= NF; i++)
calc2       if ($i ~ /^[+-]?([0-9]+[.]?[0-9]*|[.][0-9]+)$/) {
calc2           stack[++top] = $i
calc2       } else if ($i == "+" && top > 1) {
calc2           stack[top-1] += stack[top]; top--
calc2       } else if ($i == "-" && top > 1) {
calc2           stack[top-1] -= stack[top]; top--
calc2       } else if ($i == "*" && top > 1) {
calc2           stack[top-1] *= stack[top]; top--
calc2       } else if ($i == "/" && top > 1) {
calc2           stack[top-1] /= stack[top]; top--
calc2       } else if ($i == "^" && top > 1) {
calc2           stack[top-1] ^= stack[top]; top--
calc2       } else if ($i == "sin" && top > 0) {
calc2           stack[top] = sin(stack[top])
calc2       } else if ($i == "cos" && top > 0) {
calc2           stack[top] = cos(stack[top])
calc2       } else if ($i == "atan2" && top > 1) {
calc2           stack[top-1] = atan2(stack[top-1],stack[top]); top--
calc2       } else if ($i == "log" && top > 0) {
calc2           stack[top] = log(stack[top])
calc2       } else if ($i == "exp" && top > 0) {
calc2           stack[top] = exp(stack[top])
calc2       } else if ($i == "sqrt" && top > 0) {
calc2           stack[top] = sqrt(stack[top])
calc2       } else if ($i == "int" && top > 0) {
calc2           stack[top] = int(stack[top])
calc2       } else if ($i in vars) {
calc2           stack[++top] = vars[$i]
calc2       } else if ($i ~ /^[a-zA-Z][a-zA-Z0-9]*=$/ && top > 0) {
calc2           vars[substr($i, 1, length($i)-1)] = stack[top--]
calc2       } else {
calc2           printf("error: cannot evaluate %s\n", $i)
calc2           top = 0
calc2           next
calc2       }
calc2   if (top == 1 && $NF !~ /\=$/)
calc2       printf("\t%.8g\n", stack[top--])
calc2   else if (top > 1) {
calc2       printf("error: too many operands\n")
calc2       top = 0
calc2   }
calc2 }
calc3 # calc3 - infix calculator
calc3 
calc3 NF > 0 {
calc3     f = 1
calc3     e = expr()
calc3     if (f <= NF) printf("error at %s\n", $f)
calc3     else printf("\t%.8g\n", e)
calc3 }
calc3 
calc3 function expr(  e) {        # term | term [+-] term
calc3     e = term()
calc3     while ($f == "+" || $f == "-")
calc3         e = $(f++) == "+" ? e + term() : e - term()
calc3     return e
calc3 }
calc3 
calc3 function term(  e) {        # factor | factor [*/] factor
calc3     e = factor()
calc3     while ($f == "*" || $f == "/")
calc3         e = $(f++) == "*" ? e * factor() : e / factor()
calc3     return e
calc3 }
calc3 
calc3 function factor(  e) {      # number | (expr)
calc3     if ($f ~ /^[+-]?([0-9]+[.]?[0-9]*|[.][0-9]+)$/) {
calc3         return $(f++)
calc3     } else if ($f == "(") {
calc3         f++
calc3         e = expr()
calc3         if ($(f++) != ")")
calc3             printf("error: missing ) at %s\n", $f)
calc3         return e
calc3     } else {
calc3         printf("error: expected number or ( at %s\n", $f)
calc3         return 0
calc3     }
calc3 }
parser.in BEGIN   { x = 0; y = 1 }
parser.in 
parser.in $1 > x  { if (x == y+1) {
parser.in               x = 1
parser.in               y = x * 2
parser.in           } else
parser.in               print x, z[x]
parser.in         }
parser.in 
parser.in NR > 1  { print $1 }
parser.in 
parser.in END     { print NR }
parser.in 
awk.parser # awk.parser - recursive-descent translator for part of awk
awk.parser #   input:  awk program (very restricted subset)
awk.parser #   output: C code to implement the awk program
awk.parser 
awk.parser BEGIN { program() }
awk.parser 
awk.parser function advance() {      # lexical analyzer; returns next token
awk.parser     if (tok == "(eof)") return "(eof)"
awk.parser     while (length(line) == 0)
awk.parser         if (getline line == 0)
awk.parser             return tok = "(eof)"
awk.parser     sub(/^[ \t]+/, "", line)   # remove white space
awk.parser     if (match(line, /^[A-Za-z_][A-Za-z_0-9]*/) ||    # identifier
awk.parser         match(line, /^-?([0-9]+\.?[0-9]*|\.[0-9]+)/) ||  # number
awk.parser         match(line, /^(<|<=|==|!=|>=|>)/) ||         # relational
awk.parser         match(line, /^./)) {                    # everything else
awk.parser             tok = substr(line, 1, RLENGTH)
awk.parser             line = substr(line, RLENGTH+1)
awk.parser             return tok
awk.parser         }
awk.parser     error("line " NR " incomprehensible at " line)
awk.parser }
awk.parser function gen(s) {     # print s with nt leading tabs
awk.parser     printf("%s%s\n", substr("\t\t\t\t\t\t\t\t\t", 1, nt), s)
awk.parser }
awk.parser function eat(s) {     # read next token if s == tok
awk.parser     if (tok != s) error("line " NF ": saw " tok ", expected " s)
awk.parser     advance()
awk.parser }
awk.parser function nl() {       # absorb newlines and semicolons
awk.parser     while (tok == "\n" || tok == ";")
awk.parser         advance()
awk.parser }
awk.parser function error(s) { print "Error: " s | "cat 1>&2"; exit 1 }
awk.parser 
awk.parser function program() {
awk.parser     advance()
awk.parser     if (tok == "BEGIN") { eat("BEGIN"); statlist() }
awk.parser     pastats()
awk.parser     if (tok == "END") { eat("END"); statlist() }
awk.parser     if (tok != "(eof)") error("program continues after END")
awk.parser }
awk.parser function pastats() {
awk.parser     gen("while (getrec()) {"); nt++
awk.parser     while (tok != "END" && tok != "(eof)") pastat()
awk.parser     nt--; gen("}")
awk.parser }
awk.parser function pastat() {   # pattern-action statement
awk.parser     if (tok == "{")       # action only
awk.parser         statlist()
awk.parser     else {                # pattern-action
awk.parser         gen("if (" pattern() ") {"); nt++
awk.parser         if (tok == "{") statlist()
awk.parser         else              # default action is print $0
awk.parser             gen("print(field(0));")
awk.parser         nt--; gen("}")
awk.parser     }
awk.parser }
awk.parser function pattern() { return expr() }
awk.parser 
awk.parser function statlist() {
awk.parser     eat("{"); nl(); while (tok != "}") stat(); eat("}"); nl()
awk.parser }
awk.parser 
awk.parser function stat() {
awk.parser     if (tok == "print") { eat("print"); gen("print(" exprlist() ");") }
awk.parser     else if (tok == "if") ifstat()
awk.parser     else if (tok == "while") whilestat()
awk.parser     else if (tok == "{") statlist()
awk.parser     else gen(simplestat() ";")
awk.parser     nl()
awk.parser }
awk.parser 
awk.parser function ifstat() {
awk.parser     eat("if"); eat("("); gen("if (" expr() ") {"); eat(")"); nl(); nt++
awk.parser     stat()
awk.parser     if (tok == "else") {      # optional else
awk.parser         eat("else")
awk.parser         nl(); nt--; gen("} else {"); nt++
awk.parser         stat()
awk.parser     }
awk.parser     nt--; gen("}")
awk.parser }
awk.parser 
awk.parser function whilestat() {
awk.parser     eat("while"); eat("("); gen("while (" expr() ") {"); eat(")"); nl()
awk.parser     nt++; stat(); nt--; gen("}")
awk.parser }
awk.parser 
awk.parser function simplestat(   lhs) { # ident = expr | name(exprlist)
awk.parser     lhs = ident()
awk.parser     if (tok == "=") {
awk.parser         eat("=")
awk.parser         return "assign(" lhs ", " expr() ")"
awk.parser     } else return lhs
awk.parser }
awk.parser 
awk.parser function exprlist(    n, e) { # expr , expr , ...
awk.parser     e = expr()        # has to be at least one
awk.parser     for (n = 1; tok == ","; n++) {
awk.parser         advance()
awk.parser         e = e ", " expr()
awk.parser     }
awk.parser     return e
awk.parser }
awk.parser 
awk.parser function expr(e) {            # rel | rel relop rel
awk.parser     e = rel()
awk.parser     while (tok ~ /<|<=|==|!=|>=|>/) {
awk.parser         op = tok
awk.parser         advance()
awk.parser         e = sprintf("eval(\"%s\", %s, %s)", op, e, rel())
awk.parser     }
awk.parser     return e
awk.parser }
awk.parser 
awk.parser function rel(op, e) {         # term | term [+-] term
awk.parser     e = term()
awk.parser     while (tok == "+" || tok == "-") {
awk.parser         op = tok
awk.parser         advance()
awk.parser         e = sprintf("eval(\"%s\", %s, %s)", op, e, term())
awk.parser     }
awk.parser     return e
awk.parser }
awk.parser 
awk.parser function term(op, e) {        # fact | fact [*/%] fact
awk.parser     e = fact()
awk.parser     while (tok == "*" || tok == "/" || tok == "%") {
awk.parser         op = tok
awk.parser         advance()
awk.parser         e = sprintf("eval(\"%s\", %s, %s)", op, e, fact())
awk.parser     }
awk.parser     return e
awk.parser }
awk.parser 
awk.parser function fact(  e) {          # (expr) | $fact | ident | number
awk.parser     if (tok == "(") {
awk.parser         eat("("); e = expr(); eat(")")
awk.parser         return "(" e ")"
awk.parser     } else if (tok == "$") {
awk.parser         eat("$")
awk.parser         return "field(" fact() ")"
awk.parser     } else if (tok ~ /^[A-Za-z][A-Za-z0-9]*/) {
awk.parser         return ident()
awk.parser     } else if (tok ~ /^-?([0-9]+\.?[0-9]*|\.[0-9]+)/) {
awk.parser         e = tok
awk.parser         advance()
awk.parser         return "num((float)" e ")"
awk.parser     } else
awk.parser         error("unexpected " tok " at line " NR)
awk.parser }
awk.parser 
awk.parser function ident(  id, e) {     # name | name[expr] | name(exprlist)
awk.parser     if (!match(tok, /^[A-Za-z_][A-Za-z_0-9]*/))
awk.parser         error("unexpected " tok " at line " NR)
awk.parser     id = tok
awk.parser     advance()
awk.parser     if (tok == "[") {         # array
awk.parser         eat("["); e = expr(); eat("]")
awk.parser         return "array(" id ", " e ")"
awk.parser     } else if (tok == "(") {  # function call
awk.parser         eat("(")
awk.parser         if (tok != ")") {
awk.parser             e = exprlist()
awk.parser             eat(")")
awk.parser         } else eat(")")
awk.parser         return id "(" e ")"   # calls are statements
awk.parser     } else
awk.parser         return id             # variable
awk.parser }
isort.awk # insertion sort
isort.awk 
isort.awk     { A[NR] = $0 }
isort.awk 
isort.awk END { isort(A, NR)
isort.awk       for (i = 1; i <= NR; i++)
isort.awk           print A[i]
isort.awk     }
isort.awk 
isort.awk # isort - sort A[1..n] by insertion
isort.awk 
isort.awk function isort(A,n,     i,j,t) {
isort.awk     for (i = 2; i <= n; i++)
isort.awk         for (j = i; j > 1 && A[j-1] > A[j]; j--) {
isort.awk             # swap A[j-1] and A[j]
isort.awk             t = A[j-1]; A[j-1] = A[j]; A[j] = t
isort.awk         }
isort.awk }
ptest.awk # batch test of sorting routines
ptest.awk 
ptest.awk BEGIN {
ptest.awk     print "    0 elements"
ptest.awk     isort(A, 0); check(A, 0)    
ptest.awk     print "    1 element"
ptest.awk     genid(A, 1); isort(A, 1); check(A, 1)
ptest.awk     
ptest.awk     n = 10
ptest.awk     print "    " n " random integers"
ptest.awk     genrand(A, n); isort(A, n); check(A, n)
ptest.awk     
ptest.awk     print "    " n " sorted integers"
ptest.awk     gensort(A, n); isort(A, n); check(A, n)
ptest.awk     
ptest.awk     print "    " n " reverse-sorted integers"
ptest.awk     genrev(A, n); isort(A, n); check(A, n)
ptest.awk     
ptest.awk     print "    " n " identical integers"
ptest.awk     genid(A, n); isort(A, n); check(A, n)
ptest.awk }
ptest.awk 
ptest.awk function isort(A,n,     i,j,t) {
ptest.awk     for (i = 2; i <= n; i++)
ptest.awk         for (j = i; j > 1 && A[j-1] > A[j]; j--) {
ptest.awk             # swap A[j-1] and A[j]
ptest.awk             t = A[j-1]; A[j-1] = A[j]; A[j] = t
ptest.awk         }
ptest.awk }
ptest.awk 
ptest.awk # test-generation and sorting routines...
ptest.awk 
ptest.awk function check(A,n,   i) {
ptest.awk     for (i = 1; i < n; i++)
ptest.awk         if (A[i] > A[i+1])
ptest.awk             printf("array is not sorted, element %d\n", i)
ptest.awk }
ptest.awk 
ptest.awk function genrand(A,n,  i) { # put n random integers in A
ptest.awk     for (i = 1; i <= n; i++)
ptest.awk         A[i] = int(n*rand())
ptest.awk }
ptest.awk 
ptest.awk function gensort(A,n,  i) { # put n sorted integers in A
ptest.awk     for (i = 1; i <= n; i++)
ptest.awk         A[i] = i
ptest.awk }
ptest.awk 
ptest.awk function genrev(A,n,  i) {  # put n reverse-sorted integers
ptest.awk     for (i = 1; i <= n; i++)  # in A
ptest.awk         A[i] = n+1-i
ptest.awk }
ptest.awk 
ptest.awk function genid(A,n,  i) {   # put n identical integers in A
ptest.awk     for (i = 1; i <= n; i++)
ptest.awk         A[i] = 1
ptest.awk }
scaff.awk BEGIN { srand(1111) }
scaff.awk { print }
scaff.awk # interactive test framework for sort routines
scaff.awk 
scaff.awk /^[0-9]+.*rand/ { n = $1; genrand(A, n); dump(A, n); next }
scaff.awk /^[0-9]+.*id/   { n = $1; genid(A, n); dump(A, n); next }
scaff.awk /^[0-9]+.*sort/ { n = $1; gensort(A, n); dump(A, n); next }
scaff.awk /^[0-9]+.*rev/  { n = $1; genrev(A, n); dump(A, n); next }
scaff.awk /^data/ {   # use data right from this line
scaff.awk 	for (i = 2; i <= NF; i++)
scaff.awk 		A[i-1] = $i
scaff.awk 	n = NF - 1
scaff.awk 	next
scaff.awk }
scaff.awk /q.*sort/ { qsort(A, 1, n); check(A, n); dump(A, n); next }
scaff.awk /h.*sort/ { hsort(A, n); check(A, n); dump(A, n); next }
scaff.awk /i.*sort/ { isort(A, n); check(A, n); dump(A, n); next }
scaff.awk /./  { print "data ... | N [rand|id|sort|rev]; [qhi]sort" }
scaff.awk 
scaff.awk function dump(A, n) {    # print A[1]..A[n]
scaff.awk 	for (i = 1; i <= n; i++)
scaff.awk 		printf(" %s", A[i])
scaff.awk 	printf("\n")
scaff.awk }
scaff.awk 
scaff.awk # test-generation and sorting routines ...
scaff.awk 
scaff.awk function genrand(A,n,    i) { # put n random integers in A
scaff.awk     for (i = 1; i <= n; i++)
scaff.awk         A[i] = int(n*rand())
scaff.awk }
scaff.awk 
scaff.awk function gensort(A,n,    i) { # put n sorted integers in A
scaff.awk     for (i = 1; i <= n; i++)
scaff.awk         A[i] = i
scaff.awk }
scaff.awk 
scaff.awk function genrev(A,n,    i) { # put n reverse-sorted integers in A
scaff.awk     for (i = 1; i <= n; i++)
scaff.awk         A[i] = n+1-i
scaff.awk }
scaff.awk 
scaff.awk function genid(A,n,    i) { # put n identical integers in A
scaff.awk     for (i = 1; i <= n; i++)
scaff.awk         A[i] = 1
scaff.awk }
scaff.awk 
scaff.awk function check(A,n,   i) {
scaff.awk     for (i = 1; i < n; i++)
scaff.awk         if (A[i] > A[i+1])
scaff.awk             printf("error: array is not sorted, element %d\n", i)
scaff.awk }
scaff.awk function isort(A,n,        i,j,t) {
scaff.awk       for (i = 2; i <= n; i++)
scaff.awk           for (j = i; j > 1 && A[j-1] > A[j]; j--) {
scaff.awk               # swap A[j-1] and A[j]
scaff.awk               t = A[j-1]; A[j-1] = A[j]; A[j] = t
scaff.awk           }
scaff.awk }
scaff.awk 
scaff.awk function qsort(A,left,right,   i,last) {
scaff.awk      if (left >= right)  # do nothing if array contains
scaff.awk          return          # at most one element
scaff.awk      swap(A, left, left + int((right-left+1)*rand()))
scaff.awk      last = left
scaff.awk      for (i = left+1; i <= right; i++)
scaff.awk          if (A[i] < A[left])
scaff.awk              swap(A, ++last, i)
scaff.awk      swap(A, left, last)
scaff.awk      qsort(A, left, last-1)
scaff.awk      qsort(A, last+1, right)
scaff.awk }
scaff.awk 
scaff.awk function swap(A,i,j,   t) {
scaff.awk      t = A[i]; A[i] = A[j]; A[j] = t
scaff.awk }
scaff.awk 
scaff.awk function hsort(A,right,  i) {
scaff.awk      for (i = int(right/2); i >= 1; i--)
scaff.awk           heapify(A, i, right)
scaff.awk      for (i = right; i > 1; i--) {
scaff.awk           swap(A, 1, i)
scaff.awk           heapify(A, 1, i-1)
scaff.awk      }
scaff.awk }
scaff.awk 
scaff.awk function heapify(A,left,right,   p,c) {
scaff.awk      for (p = left; (c = 2*p) <= right; p = c) {
scaff.awk          if (c < right && A[c+1] > A[c])
scaff.awk              c++
scaff.awk          if (A[p] < A[c])
scaff.awk              swap(A, c, p)
scaff.awk      }
scaff.awk }
iisort.awk # count comparisons and exchanges in isort
iisort.awk 
iisort.awk     { A[NR] = $0 }
iisort.awk END { comp = exch = 0
iisort.awk       isort(A, NR)
iisort.awk       print "isort", NR, comp, exch
iisort.awk     }
iisort.awk 
iisort.awk function isort(A,n,     i,j,t) {  # insertion sort
iisort.awk     for (i = 2; i <= n; i++)      # with counters
iisort.awk         for (j = i; j > 1 && ++comp &&
iisort.awk           A[j-1] > A[j] && ++exch; j--) {
iisort.awk             # swap A[j-1] and A[j]
iisort.awk             t = A[j-1]; A[j-1] = A[j]; A[j] = t
iisort.awk         }
iisort.awk }
frame.awk # test framework for sort performance evaluation
frame.awk #   input:  lines with sort name, type of data, sizes...
frame.awk #   output: name, type, size, comparisons, exchanges, c+e
frame.awk 
frame.awk {   for (i = 3; i <= NF; i++)
frame.awk         test($1, $2, $i)
frame.awk }
frame.awk 
frame.awk function test(sort, data, n) {
frame.awk     comp = exch = 0
frame.awk     if (data ~ /rand/)
frame.awk         genrand(A, n)
frame.awk     else if (data ~ /id/)
frame.awk         genid(A, n)
frame.awk     else if (data ~ /rev/)
frame.awk         genrev(A, n)
frame.awk     else
frame.awk         print "illegal type of data in", $0
frame.awk     if (sort ~ /q.*sort/)
frame.awk         qsort(A, 1, n)
frame.awk     else if (sort ~ /h.*sort/)
frame.awk         hsort(A, n)
frame.awk     else if (sort ~ /i.*sort/)
frame.awk         isort(A, n)
frame.awk     else print
frame.awk         "illegal type of sort in", $0
frame.awk     print sort, data, n, comp, exch, comp+exch
frame.awk }
frame.awk 
frame.awk # test-generation and sorting routines ...
frame.awk 
frame.awk BEGIN { srand(111) }
frame.awk function genrand(A,n,    i) { # put n random integers in A
frame.awk     for (i = 1; i <= n; i++)
frame.awk         A[i] = int(n*rand())
frame.awk }
frame.awk 
frame.awk function gensort(A,n,    i) { # put n sorted integers in A
frame.awk     for (i = 1; i <= n; i++)
frame.awk         A[i] = i
frame.awk }
frame.awk 
frame.awk function genrev(A,n,    i) { # put n reverse-sorted integers in A
frame.awk     for (i = 1; i <= n; i++)
frame.awk         A[i] = n+1-i
frame.awk }
frame.awk 
frame.awk function genid(A,n,    i) { # put n identical integers in A
frame.awk     for (i = 1; i <= n; i++)
frame.awk         A[i] = 1
frame.awk }
frame.awk 
frame.awk function check(A,n,   i) {
frame.awk     for (i = 1; i < n; i++)
frame.awk         if (A[i] > A[i+1])
frame.awk             printf("error: array is not sorted, element %d\n", i)
frame.awk }
frame.awk function isort(A,n,        i,j,t) {
frame.awk       for (i = 2; i <= n; i++)
frame.awk           for (j = i; j > 1 && ++comp && A[j-1] > A[j] && ++exch; j--) {
frame.awk               # swap A[j-1] and A[j]
frame.awk               t = A[j-1]; A[j-1] = A[j]; A[j] = t
frame.awk           }
frame.awk }
frame.awk 
frame.awk function qsort(A,left,right,   i,last) {
frame.awk      if (left >= right)  # do nothing if array contains
frame.awk          return          # at most one element
frame.awk      swap(A, left, left + int((right-left+1)*rand()))
frame.awk      last = left
frame.awk      for (i = left+1; i <= right; i++)
frame.awk          if (++comp && A[i] < A[left])
frame.awk              swap(A, ++last, i)
frame.awk      swap(A, left, last)
frame.awk      qsort(A, left, last-1)
frame.awk      qsort(A, last+1, right)
frame.awk }
frame.awk 
frame.awk function swap(A,i,j,   t) {
frame.awk      ++exch
frame.awk      t = A[i]; A[i] = A[j]; A[j] = t
frame.awk }
frame.awk 
frame.awk function hsort(A,right,  i) {
frame.awk      for (i = int(right/2); i >= 1; i--)
frame.awk           heapify(A, i, right)
frame.awk      for (i = right; i > 1; i--) {
frame.awk           swap(A, 1, i)
frame.awk           heapify(A, 1, i-1)
frame.awk      }
frame.awk }
frame.awk 
frame.awk function heapify(A,left,right,   p,c) {
frame.awk      for (p = left; (c = 2*p) <= right; p = c) {
frame.awk          if (c < right && ++comp && A[c+1] > A[c])
frame.awk              c++
frame.awk          if (++comp && A[p] < A[c])
frame.awk              swap(A, c, p)
frame.awk      }
frame.awk }
qsort.awk # quicksort
qsort.awk 
qsort.awk     { A[NR] = $0 }
qsort.awk 
qsort.awk END { qsort(A, 1, NR)
qsort.awk       for (i = 1; i <= NR; i++)
qsort.awk           print A[i]
qsort.awk     }
qsort.awk 
qsort.awk # qsort - sort A[left..right] by quicksort
qsort.awk 
qsort.awk function qsort(A,left,right,   i,last) {
qsort.awk      if (left >= right)  # do nothing if array contains
qsort.awk          return          # less than two elements
qsort.awk      swap(A, left, left + int((right-left+1)*rand()))
qsort.awk      last = left   # A[left] is now partition element
qsort.awk      for (i = left+1; i <= right; i++)
qsort.awk          if (A[i] < A[left])
qsort.awk              swap(A, ++last, i)
qsort.awk      swap(A, left, last)
qsort.awk      qsort(A, left, last-1)
qsort.awk      qsort(A, last+1, right)
qsort.awk }
qsort.awk 
qsort.awk function swap(A,i,j,   t) {
qsort.awk      t = A[i]; A[i] = A[j]; A[j] = t
qsort.awk }
hsort.awk # heapsort
hsort.awk 
hsort.awk     { A[NR] = $0 }
hsort.awk 
hsort.awk END { hsort(A, NR)
hsort.awk       for (i = 1; i <= NR; i++)
hsort.awk           { print A[i] }
hsort.awk     }
hsort.awk 
hsort.awk function hsort(A,n,  i) {
hsort.awk     for (i = int(n/2); i >= 1; i--)  # phase 1
hsort.awk          { heapify(A, i, n) }
hsort.awk     for (i = n; i > 1; i--) {        # phase 2
hsort.awk          { swap(A, 1, i) }
hsort.awk          { heapify(A, 1, i-1) }
hsort.awk     }
hsort.awk }
hsort.awk function heapify(A,left,right,   p,c) {
hsort.awk     for (p = left; (c = 2*p) <= right; p = c) {
hsort.awk         if (c < right && A[c+1] > A[c])
hsort.awk             { c++ }
hsort.awk         if (A[p] < A[c])
hsort.awk             { swap(A, c, p) }
hsort.awk     }
hsort.awk }
hsort.awk function swap(A,i,j,   t) {
hsort.awk     t = A[i]; A[i] = A[j]; A[j] = t
hsort.awk }
makeprof # makeprof - prepare profiling version of an awk program
makeprof #   usage:  awk -f makeprof awkprog >awkprog.p
makeprof #   running awk -f awkprog.p data creates a
makeprof #       file prof.cnts of statement counts for awkprog
makeprof 
makeprof     { if ($0 ~ /{/) sub(/{/, "{ _LBcnt[" ++_numLB "]++; ")
makeprof       print
makeprof     }
makeprof 
makeprof END { printf("END { for (i = 1; i <= %d; i++)\n", _numLB)
makeprof       printf("\t\t print _LBcnt[i] > \"prof.cnts\"\n}\n")
makeprof     }
printprof # printprof - print profiling counts
printprof #     usage:  awk -f printprof awkprog
printprof #     prints awkprog with statement counts from prof.cnts
printprof 
printprof BEGIN { while (getline < "prof.cnts" > 0) cnt[++i] = $1 }
printprof /{/   { printf("%5d", cnt[++j]) }
printprof       { printf("\t%s\n", $0) }
tsort.awk # tsort - topological sort of a graph
tsort.awk #   input:  predecessor-successor pairs
tsort.awk #   output: linear order, predecessors first
tsort.awk 
tsort.awk     { if (!($1 in pcnt))
tsort.awk           pcnt[$1] = 0           # put $1 in pcnt
tsort.awk       pcnt[$2]++                 # count predecessors of $2
tsort.awk       slist[$1, ++scnt[$1]] = $2 # add $2 to successors of $1
tsort.awk     }
tsort.awk END { for (node in pcnt) {
tsort.awk           nodecnt++
tsort.awk           if (pcnt[node] == 0)   # if it has no predecessors
tsort.awk               q[++back] = node   # queue node
tsort.awk       }
tsort.awk       for (front = 1; front <= back; front++) {
tsort.awk           printf(" %s", node = q[front])
tsort.awk           for (i = 1; i <= scnt[node]; i++)
tsort.awk               if (--pcnt[slist[node, i]] == 0)
tsort.awk                   # queue s if it has no more predecessors
tsort.awk                   q[++back] = slist[node, i]
tsort.awk       }
tsort.awk       if (back != nodecnt)
tsort.awk           print "\nerror: input contains a cycle"
tsort.awk       printf("\n")
tsort.awk     }
dfs.awk # dfs - depth-first search for cycles
dfs.awk 
dfs.awk function dfs(node,     i, s) {
dfs.awk     visited[node] = 1
dfs.awk     for (i = 1; i <= scnt[node]; i++)
dfs.awk         if (visited[s = slist[node, i]] == 0)
dfs.awk             dfs(s)
dfs.awk         else if (visited[s] == 1)
dfs.awk             print "cycle with back edge (" node ", " s ")" 
dfs.awk     visited[node] = 2
dfs.awk }
rtsort.awk # rtsort - reverse topological sort
rtsort.awk #   input:  predecessor-successor pairs
rtsort.awk #   output: linear order, successors first
rtsort.awk 
rtsort.awk     { if (!($1 in pcnt))
rtsort.awk           pcnt[$1] = 0           # put $1 in pcnt
rtsort.awk       pcnt[$2]++                 # count predecessors of $2
rtsort.awk       slist[$1, ++scnt[$1]] = $2 # add $2 to successors of $1
rtsort.awk     }
rtsort.awk 
rtsort.awk END { for (node in pcnt) {
rtsort.awk           nodecnt++
rtsort.awk           if (pcnt[node] == 0)
rtsort.awk               rtsort(node)
rtsort.awk       }
rtsort.awk       if (pncnt != nodecnt)
rtsort.awk           print "error: input contains a cycle"
rtsort.awk       printf("\n")
rtsort.awk     }
rtsort.awk 
rtsort.awk function rtsort(node,     i, s) {
rtsort.awk     visited[node] = 1
rtsort.awk     for (i = 1; i <= scnt[node]; i++)
rtsort.awk         if (visited[s = slist[node, i]] == 0)
rtsort.awk             rtsort(s)
rtsort.awk         else if (visited[s] == 1)
rtsort.awk             printf("error: nodes %s and %s are in a cycle\n",
rtsort.awk                 s, node)
rtsort.awk     visited[node] = 2
rtsort.awk     printf(" %s", node)
rtsort.awk     pncnt++    # count nodes printed
rtsort.awk }
make.awk # make - maintain dependencies
make.awk 
make.awk BEGIN {
make.awk     while (getline <"makefile" > 0)
make.awk         if ($0 ~ /^[A-Za-z]/) {  #  $1: $2 $3 ...
make.awk             sub(/:/, "")
make.awk             if (++names[nm = $1] > 1)
make.awk                 error(nm " is multiply defined")
make.awk             for (i = 2; i <= NF; i++) # remember targets
make.awk                 slist[nm, ++scnt[nm]] = $i
make.awk         } else if ($0 ~ /^\t/)        # remember cmd for
make.awk             cmd[nm] = cmd[nm] $0 "\n" #   current name
make.awk         else if (NF > 0)
make.awk             error("illegal line in makefile: " $0)
make.awk     ages()      # compute initial ages
make.awk     if (ARGV[1] in names) {
make.awk         if (update(ARGV[1]) == 0)
make.awk             print ARGV[1] " is up to date"
make.awk     } else
make.awk         error(ARGV[1] " is not in makefile")
make.awk }
make.awk 
make.awk function ages(      f,n,t) {
make.awk     for (t = 1; ("ls -t" | getline f) > 0; t++)
make.awk         age[f] = t   # all existing files get an age
make.awk     close("ls -t")
make.awk     for (n in names)
make.awk         if (!(n in age))   # if n has not been created
make.awk             age[n] = 9999  # make n really old
make.awk }
make.awk function update(n,   changed,i,s) {
make.awk     if (!(n in age)) error(n " does not exist")
make.awk     if (!(n in names)) return 0
make.awk     changed = 0
make.awk     visited[n] = 1
make.awk     for (i = 1; i <= scnt[n]; i++) {
make.awk         if (visited[s = slist[n, i]] == 0) update(s)
make.awk         else if (visited[s] == 1)
make.awk             error(s " and " n " are circularly defined")
make.awk         if (age[s] <= age[n]) changed++
make.awk     }
make.awk     visited[n] = 2
make.awk     if (changed || scnt[n] == 0) {
make.awk         printf("%s", cmd[n])
make.awk         system(cmd[n])  # execute cmd associated with n
make.awk         ages()          # recompute all ages
make.awk         age[n] = 0      # make n very new
make.awk         return 1
make.awk     }
make.awk     return 0
make.awk }
make.awk function error(s) { print "error: " s; exit }
examples.index 
examples.index Cross-reference index for examples in 
examples.index The AWK Programming Language 1988
examples.index compiled 1999 Oct 5 by Chris Johansen <johansen@main.nc.us>,
examples.index to whom many thanks.
examples.index 
examples.index 
examples.index Filename	Sec	Page	Notes
examples.index 
examples.index emp.data	1.1	1	data file
examples.index 05.awk		1.2	5
examples.index 28.awk		1.2	6
examples.index 06.awk		1.2	6
examples.index 07.awk		1.2	6
examples.index 10.awk		1.2	7
examples.index 11.awk		1.3	7
examples.index 11a.awk		1.3	8
examples.index 08.sh		1.3	8	shell script
examples.index 12.awk		1.4	9
examples.index 13.awk		1.4	9
examples.index 14.awk		1.4	9
examples.index 15.awk		1.4	10
examples.index 20.awk		1.4	10
examples.index 21.awk		1.4	10
examples.index 22.awk		1.4	10
examples.index 26.awk		1.4	11
examples.index 30.awk		1.4	11
examples.index 31.awk		1.5	12
examples.index 31a.awk		1.5	12
examples.index 32.awk		1.5	12
examples.index 33.awk		1.5	12
examples.index 34.awk		1.5	13
examples.index 33a.awk		1.5	13
examples.index 40.awk		1.5	14
examples.index 40a.awk		1.5	14
examples.index 41.awk		1.6	14
examples.index interest1.awk	1.6	15
examples.index forint.awk	1.6	16	(interest2)
examples.index 50.awk		1.7	16	(reverse1)
examples.index 51.awk		1.7	17	(reverse2)
examples.index 61.awk		1.8	17	one-liner 1
examples.index 62.awk		1.8	17	one-liner 2
examples.index 66.awk		1.8	17	one-liner 3
examples.index 63.awk		1.8	17	one-liner 4
examples.index 64.awk		1.8	17	one-liner 5
examples.index 65.awk		1.8	17	one-liner 6
examples.index 67.awk		1.8	17	one-liner 7
examples.index 68.awk		1.8	17	one-liner 8
examples.index 69.awk		1.8	18	one-liner 9
examples.index 70.awk		1.8	18	one-liner 10
examples.index 71.awk		1.8	18	one-liner 11
examples.index 72.awk		1.8	18	one-liner 12
examples.index 73.awk		1.8	18	one-liner 13
examples.index 74.awk		1.8	18	one-liner 14
examples.index 75.awk		1.8	18	one-liner 15
examples.index 76.awk		1.8	18	one-liner 16
examples.index 77.awk		1.8	18	one-liner 17
examples.index 78.awk		1.8	18	one-liner 18
examples.index 79.awk		1.8	18	one-liner 19
examples.index 80.awk		1.8	18	one-liner 20
examples.index countries	2	22	data file
examples.index p11.awk		2.1	24
examples.index p12.awk		2.1	26
examples.index p13.awk		2.1	26
examples.index p13a.awk	2.1	26
examples.index re1.awk		2.1	30
examples.index re2.awk		2.1	30
examples.index re3.awk		2.1	30
examples.index re4.awk		2.1	30
examples.index re5.awk		2.1	30
examples.index re6.awk		2.1	30
examples.index re7.awk		2.1	30
examples.index re8.awk		2.1	30
examples.index p16.awk		2.1	31
examples.index p18.awk		2.1	31
examples.index p19.awk		2.1	31
examples.index p20.awk		2.1	32
examples.index p20a.awk	2.1	32
examples.index p20b.awk	2.1	32
examples.index p21.awk		2.1	33
examples.index p22.awk		2.1	32
examples.index p22a.awk	2.1	32
examples.index p23.awk		2.2	35
examples.index p41.awk		2.2	35
examples.index p42.awk		2.2	35
examples.index p43.awk		2.2	36
examples.index p43a.awk	2.2	38
examples.index p32.awk		2.2	38
examples.index p34.awk		2.2	38
examples.index p24.awk		2.2	39
examples.index p35.awk		2.2	40
examples.index p17.awk		2.2	40
examples.index builtup.awk	2.2	40
examples.index p36.awk		2.2	43
examples.index p39.awk		2.2	43
examples.index p40.awk		2.2	44
examples.index p40a.awk	2.2	45
examples.index p40b.awk	2.2	45
examples.index p45.awk		2.2	48
examples.index p46.awk		2.2	49
examples.index empty.awk	2.2	50
examples.index revline.awk	2.2	50
examples.index p47.awk		2.2	51
examples.index p48.awk		2.2	51
examples.index p51.awk		2.3	53
examples.index p51a.awk	2.3	54
examples.index p52.awk		2.4	56
examples.index p53.awk		2.4	57
examples.index p53a.awk	2.4	58
examples.index p53b.awk	2.4	58
examples.index p54.awk		2.4	58
examples.index p60.awk		2.5	62
examples.index p61.awk		2.5	63
examples.index p44.awk		2.5	64
examples.index p62.awk		2.6	64
examples.index field.awk	2.6	66
examples.index sum1		3.1	68
examples.index sum2		3.1	68
examples.index sum3		3.1	69
examples.index 3-4.ans		3.1	69	exercise 3-4
examples.index percent		3.1	70
examples.index histogram	3.1	70
examples.index hist.sh		3.1	70	shell script
examples.index histans1.awk	3.1	71	exercise 3-5
examples.index sumcomma	3.1	71
examples.index addcomma	3.1	72
examples.index addcomma.ans	3.1	72	exercise 3-7
examples.index addcomma.ans2	3.1	72	exercise 3-7
examples.index datecvt		3.1	72
examples.index date.data	3.1	73	data file
examples.index daynum		3.1	73	exercise 3-8
examples.index nm.output	3.1	73	data file
examples.index nm.format	3.1	74
examples.index prchecks	3.1	75
examples.index checkfix.ans	3.1	76	exercise 3-9,12
examples.index colcheck	3.2	77
examples.index p12check	3.2	77
examples.index delim.ans	3.2	78	exercise 3-13
examples.index passwd		3.2	78
examples.index checkgen.data	3.2	79	data file
examples.index checkgen	3.2	79
examples.index valid.ans	3.2	79	exercise 3-14
examples.index compat		3.2	80
examples.index bundle		3.3	81
examples.index unbundle	3.3	82
examples.index addr.1		3.4	83	data file
examples.index ny1.awk		3.4	83
examples.index ny2.awk		3.4	83
examples.index smith.awk	3.4	84
examples.index msort.sh	3.4	84	shell script
examples.index addr.2		3.4	85
examples.index doctors1.awk	3.4	85
examples.index doctors2.awk	3.4	85
examples.index checks.data	3.4	86	data file
examples.index check1		3.4	87
examples.index check2		3.4	87
examples.index check3		3.4	88
examples.index prep1		4.1	90
examples.index form1		4.1	91
examples.index prep2		4.1	91
examples.index form2		4.1	92
examples.index prep3		4.1	93
examples.index form3		4.1	94
examples.index form4		4.1	96
examples.index table		4.1	98
examples.index table1		4.1	196	exercise 4-3
examples.index info0		4.2	99
examples.index info		4.2	100
examples.index info.ans	4.2	100	exercise 4-5
examples.index info1.ans	4.2	100	exercise 4-5
examples.index letter.text	4.2	101
examples.index form.gen	4.2	101
examples.index capitals	4.3	102	data file
examples.index merge.awk	4.3	103
examples.index join.awk	4.3	104
examples.index relfile		4.3	106
examples.index avgarea.awk	4.3	108
examples.index qawk		4.3	109
examples.index qawk1.ans	4.3	110	exercise 4-11
examples.index randint		5.1	111
examples.index randlet		5.1	112
examples.index choose		5.1	112
examples.index comb.ans	5.1	112	exercise 5-2
examples.index bridge.ans	5.1	112	exercise 5-3
examples.index cliche		5.1	113
examples.index grammar		5.1	113	data file
examples.index sentgen		5.1	115
examples.index sentgen1	5.1	116	exercise 5-6
examples.index sentgen2	5.1	116	exercise 5-7
examples.index arith		5.1	117
examples.index quiz.elems	5.1	117	data file
examples.index quiz		5.1	118
examples.index wordfreq	5.3	119
examples.index fmt		5.3	120
examples.index fmt.just	5.3	120	exercise 5-13
examples.index xref.data	5.3	121	data file
examples.index xref		5.3	122
examples.index xref.ans	5.3	122	exercise 5-16
examples.index xref1.ans	5.3	122	exercise 5-18
examples.index say.in.kwic	5.3	123	input file
examples.index kwic		5.3	123
examples.index kwic.ans	5.3	124	exercise 5-19
examples.index ix.raw		5.3	125	data file
examples.index ix.collapse	5.3	126
examples.index ix.rotate	5.3	127
examples.index ix.genkey	5.3	128
examples.index ix.sort1	5.3	126
examples.index ix.sort2	5.3	128
examples.index ix.format	5.3	129
examples.index indall		5.3	129	shell script
examples.index sum.asm		6.1	133	assembly source
examples.index asm		6.1	134
examples.index asm.print	6.1	135	exercise 6-1
examples.index graph		6.2	137
examples.index transpose	6.2	139	exercise 6-6
examples.index sortgen0.in	6.3	140	input file
examples.index sortgen.in	6.3	140	input file
examples.index sortgen		6.3	141
examples.index calc1		6.4	143
examples.index calc2		6.4	144
examples.index calc3		6.5	146
examples.index parser.in	6.6	147	input file
examples.index awk.parser	6.6	149
examples.index isort.awk	7.1	154
examples.index ptest.awk	7.1	155
examples.index scaff.awk	7.1	157
examples.index iisort.awk	7.1	158
examples.index frame.awk	7.1	159
examples.index qsort.awk	7.1	161
examples.index hsort.awk	7.1	165
examples.index makeprof	7.2	167
examples.index printprof	7.2	168
examples.index tsort.awk	7.3	172
examples.index dfs.awk		7.3	173
examples.index rtsort.awk	7.3	174
examples.index make.awk	7.4	178
