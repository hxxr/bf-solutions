WARNING: The input always ends with a newline (10)

MMMMMMMMMMMMM PHASE 1 MMMMMMMMMMMMM
Find out if the X and Y values are positive or negative
Cell 0 is 1 if the X value is positive or 0 if negative
Cell 1 is 1 if the Y value is positive or 0 if negative

Now at cell 0
>>,                                Input a character from X into cell 2
>+++++[<--------->-]<              Subtract 45 from cell 2 to check for minus

Now at cell 2
The code within these brackets only runs if minus was not detected in X
[
    <<+                            Set cell 0 to 1
    >>[-]                          Clear cell 2 to end loop
]

+                                  Set cell 2 to 1
This loop runs until a newline is detected
[
    [-]                            Set cell 2 to 0 (consume read character)
    ,                              Try to input a character from X into cell 2
    ----------                     Subtract 10 from cell 2 to check for newline
]

,                                  Input a character from Y into cell 2
>+++++[<--------->-]<              Subtract 45 from cell 2 to check for minus

Now at cell 2
The code within these brackets only runs if minus was not detected in Y
[
    <+                             Set cell 1 to 1
    >[-]                           Clear cell 2 to end loop
]

+                                  Set cell 2 to 1
This loop runs until a newline is detected
[
    [-]                            Set cell 2 to 0 (consume read character)
    ,                              Try to input a character from X into cell 2
    ----------                     Subtract 10 from cell 2 to check for newline
]

MMMMMMMMMMMMM FINAL PHASE MMMMMMMMMMMMM
Decide what to print based on the content of cells 0 and 1

Now at cell 2
>>                                 Go to cell 4
>+++++++[<+++++++>-]<              Set cell 4 to 49 (1)
<+                                 Set cell 3 to 1
<+                                 Set cell 2 to 1
<<                                 Go to cell 0

Now at cell 0
The code within these brackets only runs if X is positive
[
    >                              Go to cell 1
    The code within these brackets only runs if Y is positive
    [
        Quadrant 1
        >-                         Set cell 2 to 0 (prevent running code below)
        >>.                        Print "1" (cell 4)
        <<<-                       Set cell 1 to 0 to end loop
    ]

    >                              Go to cell 2
    The code within these brackets only runs if Y is negative
    [
        Quadrant 4
        >>+++                      Set cell 4 to 52 (4)
        .                          Print "4" (cell 4)
        <<-                        Set cell 2 to 0 to end loop
    ]

    >-                             Set cell 3 to 0 (prevent running code below)
    <<<-                           Set cell 0 to 0 to end loop
]

>>>                                Go to cell 3
The code within these brackets only runs if X is negative
[
    <<                             Go to cell 1
    The code within these brackets only runs if Y is positive
    [
        Quadrant 2
        >-                         Set cell 2 to 0 (prevent running code below)
        >>+                        Set cell 4 to 50 (2)
        .                          Print "2" (cell 4)
        <<<-                       Set cell 1 to 0 to end loop
    ]

    >                              Go to cell 2
    The code within these brackets only runs if Y is negative
    [
        Quadrant 3
        >>++                       Set cell 4 to 51 (3)
        .                          Print "3" (cell 4)
        <<-                        Set cell 2 to 0 to end loop
    ]
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
>>,>+++++[<--------->-]<[<<+>>[-]]+[[-],----------],>+++++[<--------->-]<[<+>[-]
]+[[-],----------]>>>+++++++[<+++++++>-]<<+<+<<[>[>->>.<<<-]>[>>+++.<<-]>-<<<-]>
>>[<<[>->>+.<<<-]>[>>++.<<-]]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
