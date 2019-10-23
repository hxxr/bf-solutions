WARNING: The input always ends with a newline (10)

>,,,                               Read first character of second line to cell 1
----------                         Subtract 10 to check for newline

Now at cell 1
This loop runs until newline (10) is encountered
[
    <                              Go to cell 0
    +++++[>-----------<-]          Subtract 55 from cell 1 to check for A
    +                              Set cell 0 to 1
    >                              Go to cell 1

    Now at cell 1
    The code within these brackets only runs if B is encountered
    [
        >+                         Increment cell 2
        <<-                        Set cell 0 to 0
        >-                         Set cell 1 to 0 to end loop
    ]
    <                              Go to cell 0

    Now at cell 0
    The code within these brackets only runs if A is encountered
    [
        >>-                        Decrement cell 2
        <<-                        Set cell 0 to 0 to end loop
    ]

    >                              Go to cell 1
    ,                              Read next character into cell 1
    ----------                     Subtract 10 from cell 1 to check for newline
]

<                                  Go to cell 0
+                                  Set cell 0 to 1
>>                                 Go to cell 2

The code within these brackets only runs if the vote was not a tie
[
    >                              Go to cell 3
    >++++++[<+++++++++++>-]<       Set cell 3 to 66 (B)
    <                              Go to cell 2

    The code within these brackets only runs if there were more A votes
    -[-[-[-[-[-[-[-[-[
        >-                         Set cell 3 to 65 (A)
        <[+]                       Set cell 2 to 0 to end loop
    ]]]]]]]]]

    >                              Go to cell 3
    .                              Print the character in cell 3
    <<<-                           Set cell 0 to 0
    >>                             Go to empty cell 2 to end loop
]
<<                                 Go to cell 0

The code within these brackets only runs if the vote was a tie
[
    -                              Set cell 0 to 0
    -[--->+<]>-.[---->+++++<]>.----. Print "Tie" (ends at cell 2)
    >                              Go to empty cell 3 to end loop
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
>,,,----------[<+++++[>-----------<-]+>[>+<<->-]<[>>-<<-]>,----------]<+>>[>>+++
+++[<+++++++++++>-]<<-[-[-[-[-[-[-[-[-[>-<[+]]]]]]]]]]>.<<<->>]<<[--[--->+<]>-.[
---->+++++<]>.----.>]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
