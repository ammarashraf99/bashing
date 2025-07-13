# Wild Cards in brief



### "*" 
it can replace any set of characters...

`$rm *.php`  -->> remove any file that ends with .php

`$rm *.*htm*` -->> remove any file that has a dot and htm as patterns

`$rm -r *.*` -->> remove any file that has a dot

`$rm -r *` -->> remove all files



### "?"
Does the same as "*" but replaces only one character

`rm 20?.shtml` --> remove any file that has any character in ? location



### [<chars>] and [!<chars>]
[] ->> and extention of "?" but givnig a subset of characters to work with

1. abc.txt
2. bbc.txt
3. rbc.txt

`$rm [ab]bc.txt` ---> this will remove 1, and 2 files

`$rm [!ab]bc.txt` ---> this will remove 3 file


[ars]  : stands for a single character from the list (a,r,s)

[!ars] : stands for a single character except for the list (a,r,s)
 
[2-5]  : stands for a single character from the range 2 to 5

[!2-5] : stands for a single character except the range 2 to 5

[a-l]  : from range of 'a' to 'l'

[!a-l] : all except the range from 'a' to 'l'

[1-37-9] : 1-3   7-9 == 1 2 3 7 8 9

[a-chk] : a b c h k

#### Example:

`$rm -r ab[c-fh-j]`

* after this command, will 'abcd' file be deleted ??  [NO]

