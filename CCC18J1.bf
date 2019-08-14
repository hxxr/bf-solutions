Now at cell 0
>,                                 Read first digit into cell 1
>,[-]                              Move to cell 2 and consume newline
,                                  Read second digit into cell 2
>,[-]                              Move to cell 3 and consume newline
,                                  Read third digit into cell 3
>,[-]                              Move to cell 4 and consume newline
,                                  Read fourth digit into cell 4
>+                                 Set cell 5 to 1
<<<<                               Go to cell 1

MMMMMMMMMMMMM CASE 1 MMMMMMMMMMMMM
First we check if cell 1 is equal to 56
Because if it is then the first digit is an 8

Now at cell 1
<+++++++[>--------<-]>             Subtract 56 from cell 1
The code within these brackets only runs if the first digit was not 8
[
    >>>>-                          Set cell 5 to 0 to end loop
]
<[<]>>>>>                          Go to cell 5

Now at cell 5
The code within these brackets only runs if the first digit was 8
[
    >+                             Increment cell 6
    <-                             Set cell 5 to 0 to end loop
]
+                                  Set cell 5 to 1
<<<<                               Go to cell 1

And then check if cell 1 is equal to 57
Because that means the first digit is a 9

Now at cell 1
-                                  Subtract 1 from cell 1
The code within these brackets only runs if the first digit was not 9
[
    >>>>-                          Set cell 5 to 0 to end loop
]
<[<]>>>>>                          Go to cell 5

Now at cell 5
The code within these brackets only runs if the first digit was 9
[
    >+                             Increment cell 6
    <-                             Set cell 5 to 0 to end loop
]
+                                  Set cell 5 to 1
<<<<[+]                            Set cell 1 to 0
>>>                                Go to cell 4

MMMMMMMMMMMMM CASE 2 MMMMMMMMMMMMM
Now we check if cell 4 is equal to 56
Because that means the fourth digit is an 8

Now at cell 4
>>>+++++++[<<<-------->>>-]<<<     Subtract 56 from cell 4
The code within these brackets only runs if the fourth digit was not 8
[
    >-                             Set cell 5 to 0 to end loop
]
<[<]>>>>                           Go to cell 5

Now at cell 5
The code within these brackets only runs if the first digit was 8
[
    >+                             Increment cell 6
    <-                             Set cell 5 to 0 to end loop
]
+                                  Set cell 5 to 1
<                                  Go to cell 4

And then check if cell 4 is equal to 57
Because that means the fourth digit is a 9

Now at cell 4
-                                  Subtract 1 from cell 4
The code within these brackets only runs if the fourth digit was not 9
[
    >-                             Set cell 5 to 0 to end loop
]
<[<]>>>>                           Go to cell 5

Now at cell 5
The code within these brackets only runs if the first digit was 9
[
    >+                             Increment cell 6
    <-                             Set cell 5 to 0 to end loop
]
+                                  Set cell 5 to 1
<[+]                               Set cell 4 to 0
<<                                 Go to cell 2

MMMMMMMMMMMMM CASE 3 MMMMMMMMMMMMM
Finally we check if the second and the third digits are the same
We do this by checking cells 2 and 3 for equality

Now at cell 2
[->-<]                             Subtract from cells 2 and 3 until cell 2 is 0
>                                  Go to cell 3
The code within these brackets only runs if the digits were unequal
That is if cell 3 is nonzero after the subtraction
[
    >>-                            Set cell 5 to 0
    <<[-]                          Set cell 3 to 0 to end loop
]
>>                                 Go to cell 5

Now at cell 5
The code within these brackets only runs if the digits were equal
[
    >+                             Increment cell 6
    <-                             Set cell 5 to 0 to end loop
]
+                                  Set cell 5 to 1
>                                  Go to cell 6

MMMMMMMMMMMMM FINAL STEP MMMMMMMMMMMMM
Now we just have to check if all 3 cases were met
This is done by checking if the value of cell 6 is equal to 3

Now at cell 6
---                                Subtract 3 from cell 6
The code within these brackets only runs if not all 3 cases were met
[
    <-                             Set cell 5 to 0
    >>                             Go to cell 7

    Print "answer" (Ends at cell 9)
    --[----->+<]>-----.+++++++++++++.+++++.++++.[->+++<]>.+++++++++++++.

    <<<[+]                         Set cell 6 to 0 to end loop
]
<                                  Go to cell 5

Now at cell 5
The code within these brackets only runs if all 3 cases were met
[
    >                              Go to cell 6

    Print "ignore" (Ends at cell 7)
    +[----->+++<]>++.--.+++++++.+.+++.-------------.

    <<-                             Set cell 5 to 0 to end loop
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
>,>,[-],>,[-],>,[-],>+<<<<<+++++++[>--------<-]>[>>>>-]<[<]>>>>>[>+<-]+<<<<-[>>>
>-]<[<]>>>>>[>+<-]+<<<<[+]>>>>>>+++++++[<<<-------->>>-]<<<[>-]<[<]>>>>[>+<-]+<-
[>-]<[<]>>>>[>+<-]+<[+]<<[->-<]>[>>-<<[-]]>>[>+<-]+>---[<->>--[----->+<]>-----.+
++++++++++++.+++++.++++.[->+++<]>.+++++++++++++.<<<[+]]<[>+[----->+++<]>++.--.++
+++++.+.+++.-------------.<<-]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
