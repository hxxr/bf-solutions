WARNING: The input always ends with a newline (10)

MMMMMMMMMMMMM  PHASE 1 MMMMMMMMMMMMM
Extract the flip states into cells 1 and 2
Cell 1 is 1 if there's a horizontal flip or 0 otherwise
Cell 2 is 1 if there's a vertical flip or 0 otherwise

Now at cell 0
,                                   Get the next character from input
----------                          Subtract 10 from cell 0 to check for newline
This loop runs until newline (10) is received
[
    >>>+++++++[<<<--------->>>-]<<<+Subtract 62 from cell 0 to check for "V"
    >>>+                            Set cell 3 to 1
    >+                              Set cell 4 to 1
    <<<<                            Go back to cell 0

    The code within these brackets only runs if a "V" was read
    [
        >>                          Go to cell 2
        The code within these brackets only runs if vertical flip was on
        [
            -                       Set cell 2 (vertical flip) to 0
            >-                      Set cell 3 to 0 (prevent running code below)
            <                       Go back to empty cell 2 to end loop
        ]

        >                           Go to cell 3
        The code within these brackets only runs if vertical flip was off
        [
            <+                      Set cell 2 (vertical flip) to 1
            >-                      Set cell 3 to 0 to end loop
        ]

        >-                          Set cell 4 to 0 (prevent running code below)
        <<<<[-]                     Set cell 0 to 0 to end loop
    ]

    >>>>                            Go to cell 4
    The code within these brackets only runs if an "H" was read
    [
        <<<                         Go to cell 1
        The code within these brackets only runs if horizontal flip was on
        [
            -                       Set cell 1 (horizontal flip) to 0
            >>-                     Set cell 3 to 0 (prevent running code below)
            <<                      Go back to empty cell 1 to end loop
        ]

        >>                          Go to cell 3
        The code within these brackets only runs if horizontal flip was off
        [
            <<+                     Set cell 1 (horizontal flip) to 0
            >>-                     Set cell 3 to 0 to end loop
        ]

        >-                          Set cell 4 to 0 to end loop
    ]

    <<<<                            Go back to cell 0
    ,                               Attempt to read next character
    ----------                      Subtract 10 from cell 0 to check for newline
]

MMMMMMMMMMMMM PHASE 2 MMMMMMMMMMMMM
Write characters into these cells:
cell 5: 1 (49)
cell 6: 2 (50)
cell 7: 3 (51)
cell 8: 4 (52)
cell 9: space (32)
cell 10: newline (10)

Now at cell 0
>>>>                                Go to cell 4
Set cells 5 through 8 to 49 (1)
+++++++[>+++++++>+++++++>+++++++>+++++++<<<<-]

>>+                                 Set cell 6 to 50 (2)
>++                                 Set cell 7 to 51 (3)
>+++                                Set cell 8 to 52 (4)
>>++++[<++++++++>-]                 Set cell 9 to 32 (space)
++++++++++                          Set cell 10 to 10 (newline)


MMMMMMMMMMMMM FINAL PHASE MMMMMMMMMMMMM
Decide in which order to print those 6 characters we just created

Now at cell 10
<<<<<<+                             Set cell 4 to 1
<+                                  Set cell 3 to 1
<<                                  Go to cell 1 (horizontal flip)

Now at cell 1
The code within these brackets only runs if horizontal flip is on
[
    >                               Go to cell 2 (vertical flip)
    The code within these brackets only runs if vertical flip is on
    [
        4 3
        2 1
        >-                          Set cell 3 to 0 (prevent running code below)
        >>>>>.                      Print "4" (cell 8)
        >.                          Print space (cell 9)
        <<.                         Print "3" (cell 7)
        >>>.                        Print newline (cell 10)
        <<<<.                       Print "2" (cell 6)
        >>>.                        Print space (cell 9)
        <<<<.                       Print "1" (cell 5)
        <<<-                        Set cell 2 to 0 to end loop
    ]

    >                               Go to cell 3
    The code within these brackets only runs if vertical flip is off
    [
        3 4
        1 2
        >>>>.                       Print "3" (cell 7)
        >>.                         Print space (cell 9)
        <.                          Print "4" (cell 8)
        >>.                         Print newline (cell 10)
        <<<<<.                      Print "1" (cell 5)
        >>>>.                       Print space (cell 9)
        <<<.                        Print "2" (cell 6)
        <<<-                        Set cell 3 to 0 to end loop
    ]

    >-                              Set cell 4 to 0 (prevent running code below)
    <<<-                            Set cell 1 to 0 to end loop
]

>>>                                 Go to cell 4
The code within these brackets only runs if horizontal flip is off
[
    <<                              Go to cell 2 (vertical flip)
    The code within these brackets only runs if vertical flip is on
    [
        2 1
        4 3
        >-                          Set cell 3 to 0 (prevent running code below)
        >>>.                        Print "2" (cell 6)
        >>>.                        Print space (cell 9)
        <<<<.                       Print "1" (cell 5)
        >>>>>.                      Print newline (cell 10)
        <<.                         Print "4" (cell 8)
        >.                          Print space (cell 9)
        <<.                         Print "3" (cell 7)
        <<<<<-                      Set cell 2 to 0 to end loop
    ]

    >                               Go to cell 3
    The code within these brackets only runs if vertical flip is off
    [
        1 2
        3 4
        >>.                         Print "1" (cell 5)
        >>>>.                       Print space (cell 9)
        <<<.                        Print "2" (cell 6)
        >>>>.                       Print newline (cell 10)
        <<<.                        Print "3" (cell 7)
        >>.                         Print newline (cell 9)
        <.                          Print "4" (cell 8)
        <<<<<-                      Set cell 3 to 0 to end loop
    ]
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
,----------[>>>+++++++[<<<--------->>>-]<<<+>>>+>+<<<<[>>[->-<]>[<+>-]>-<<<<[-]]
>>>>[<<<[->>-<<]>>[<<+>>-]>-]<<<<,----------]>>>>+++++++[>+++++++>+++++++>++++++
+>+++++++<<<<-]>>+>++>+++>>++++[<++++++++>-]++++++++++<<<<<<+<+<<[>[>->>>>>.>.<<
.>>>.<<<<.>>>.<<<<.<<<-]>[>>>>.>>.<.>>.<<<<<.>>>>.<<<.<<<-]>-<<<-]>>>[<<[>->>>.>
>>.<<<<.>>>>>.<<.>.<<.<<<<<-]>[>>.>>>>.<<<.>>>>.<<<.>>.<.<<<<<-]]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
