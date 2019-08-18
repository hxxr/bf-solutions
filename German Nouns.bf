WARNING: The input always ends with a newline (10)

Now at cell 0
This loop ignores all characters from the first line and ends with newline (10)
+                                  Set cell 0 to 1
[
    [-]                            Ignore input
    ,                              Read next character into cell 0
    ----------                     Subtract 10 from cell 0 to check for newline
]

Now at cell 0
,                                  Read character into cell 0 (from second line)
+                                  Increment cell 0 to check for EOF

Now at cell 0
This loop runs once per remaining line and ends with EOF (255)
[
    -                              Decrement cell 0 to restore previous value
    ----------                     Subtract 10 from cell 0 to check for newline
    This loop records each character and ends with newline (10)
    [
        We must check if cell 0 was an uppercase letter or not
        We can do this by subtracting 54 from its character code
        Now if it's an uppercase letter its new value will be less than 30
        >++++++[<--------->-]      Subtract 54 from cell 0 (Ends at cell 1)
        >+++++[<++++++>-]<         Set cell 1 to 30

        This loop subtracts 30 from cell 0
        Or until cell 0 becomes 0
        If at any time cell 0 becomes 0 during the subtraction
        cell 0 must contain an uppercase letter
        If it contains an uppercase letter we must increment cell 4
        [
            Now at cell 1
            >>+                    Increment cell 3
            <<<-                   Decrement cell 0

            The code within these brackets only runs if cell 0 is nonzero
            [
                >>>-               Set cell 3 to 0
                <                  Go to empty cell 2 to end loop
            ]
            >[>]<[>]>              Go to cell 3

            The code within these brackets only runs if cell 0 is zero
            [
                >+                 Increment cell 4
                <<<[-]+            Set cell 1 to 1
                >>-                Set cell 3 to 0 to end loop
            ]

            <<-                    Decrement cell 1
        ]

        <,                         Read next character from line into cell 0
        ----------                 Subtract 10 from cell 0 to check for newline
    ]

    Now at cell 0
    >>>                            Go to cell 3
    Print the value of cell 4 (Ends at cell 3)
    +>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]++++++++[<+
    +++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]

    Now at cell 3
    ++++++++++.[-]                 Print a newline using cell 3
    <<<,                           Read character from next line into cell 0
    +                              Increment cell 0 to check for EOF
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
+[[-],----------],+[-----------[>++++++[<--------->-]>+++++[<++++++>-]<[>>+<<<-[
>>>-<]>[>]<[>]>[>+<<<[-]+>>-]<<-]<,----------]>>>+>[<->[>++++++++++<[->-[>+>>]>[
+[-<+>]>+>>]<<<<<]>[-]++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<+
+++++>-]]<[.[-]<]++++++++++.[-]<<<,+]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
