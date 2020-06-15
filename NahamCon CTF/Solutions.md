<h1>Nahamcon CTF write-up</h1>

<h2>Web</h2>
<h4>Agent95</h4>
It says only agent95 is allowed, and that the older version of windows is required, so check for windows 95,  and change ‘User agent’ header by capturing the request in burp suite. 
This is what gives us the flag:
Windows 95; Microsoft x86_64	
  








<h4>Localghost</h4>
Open the source code of the page.  We can find a file used ‘jquery.jscroll2.js’. Open this js file and we get lots of code. Copy the contents of the variable ‘var _0xbcec’. 
 
Using the find and replace we remove \x from the contents. Below is the hex we get after removing them.
 
The result we get is a series of hex characters. Convert it to text and we again find some script.
 
“SkNURntzcG9vb29va3lfZ2hvc3RzX2luX3N0b3JhZ2V9“ 
This is the thing which could give us the flag, as it looks odd in the code above. This is base 64 encoded. Decode it, and the flag is found.
 

<h2>Warmup</h2>		
<h4>Read the rules</h4>
Open the rules page and you get the flag in source code.
<h4>CLIsay</h4>
Just download the file and through terminal, type : strings clisay
We get the flag.
 

<h4>Metameme</h4>
The command is : strings hackermeme.jpg | grep flag

<h4>UGGC</h4>
Using burp suite we capture the request, and find that the cookie is our input rotated by 13, therefore rotate admin by 13, and we get the flag. 
 
Here the user in cookie got set as ‘nopq’ when input is ‘abcd’. 
So, rotate ‘admin’ by 13, and the result is ‘nqzva’.
 
