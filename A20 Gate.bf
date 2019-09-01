WARNING: The input always ends with a newline (10)

Now at cell 0
This loop ignores all characters from the first line and ends with newline (10)
+                                  Set cell 0 to 1
[
    ,                              Read next character into cell 0
    ----------                     Subtract 10 from cell 0 to check for newline
]

Now at cell 0
>,                                 Read first character into cell 1
+                                  Increment cell 1 to check for EOF

Now at cell 0
This loop runs once per remaining line and ends with EOF (255)
[
    Now at cell 0
    -                              Decrement cell 1 to restore previous value
    >,                             Read second character into cell 2
    >,                             Read third character into cell 3

    Now at cell 3
    [->+>+<<]                      Move cell 3 into cell 4 and cell 5
    >[-<+>]                        Move cell 4 back into cell 3
    ++++++[<-------->-]<           Subtract 48 from cell 3

    Now at cell 3
    The code within these brackets only runs if cell 3 does not contain:
    "0" "2" "4" "6" "8"
    [--[--[--[--[
        The code within these brackets only runs if cell 3 does not contain:
        "B" "D" "F"
        ---------[--[--[
            >>-                    Decrement cell 5
            >>>>>+                 Set cell 10 to 1
            <<<<<<<[+]             Set cell 3 to 0 to end loop
        ]]]
    ]]]]]

    >>                             Go to cell 5
    [-<<+>>]                       Move cell 5 into cell 3

    Now at cell 5
    <,                             Read fourth character into cell 4
    >,                             Read fifth character into cell 5
    >,                             Read sixth character into cell 6
    >,                             Read seventh character into cell 7
    >,                             Read eighth character into cell 8
    <[<]>                          Go to cell 1

    Now at cell 1
    This loop prints cells 1 through 8 and ends at cell 9
    [
        .                          Print character at current cell
        >                          Go to next cell to the right
    ]
    >                              Go to cell 10

    Now at cell 10
    The code within these brackets only runs if the state of the A20 Gate
    gives two possible addresses
    (in which case we must now print the second address)
    [
        -                          Set cell 10 to 0
        >++++[<++++++++>-]<.       Print a space (32) using cell 10
        <<<<<<<+                   Increment cell 3
        <<                         Go to cell 1
        This loop prints cells 1 through 8 and ends at cell 9
        [
            .                      Print character at current cell
            >                      Go to next cell to the right
        ]
        >[-]                       Set cell 10 to 0 to end loop
    ]
    <<                             Go to cell 8
    [[-]<]                         Set cells 1 through 8 to 0 (Ends at cell 0)

    Now at cell 0
    >,.                            Read and print a newline (10) using cell 1
    ,                              Read (next) first character into cell 1
    +                              Increment cell 1 to check for EOF
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
+[,----------]>,+[->,>,[->+>+<<]>[-<+>]++++++[<-------->-]<[--[--[--[--[--------
-[--[--[>>->>>>>+<<<<<<<[+]]]]]]]]]>>[-<<+>>]<,>,>,>,>,<[<]>[.>]>[->++++[<++++++
++>-]<.<<<<<<<+<<[.>]>[-]]<<[[-]<]>,.,+]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
