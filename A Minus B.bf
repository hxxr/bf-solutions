WARNING: The input always ends with a newline (10)

Now at cell 0
This loop ignores all characters from the first line and ends with newline (10)
+                                Set cell 0 to 1
[
    ,                            Read next character into cell 0
    ----------                   Subtract 10 from cell 0 to check for newline
]

Now at cell 0
>>>,                             Read digit into cell 3 (from second line)
+                                Increment cell 3 to check for EOF (255)

Now at cell 3
This loop runs once per remaining line and ends with EOF (255)
[
    The digits of the first number are stored in cells 6 9 12 15 etc
    Cell 6 contains the least significant digit
    The digits of the second number are stored in cells 7 10 13 16 etc
    Cell 7 contains the least significant digit
    The cell to the left of a digit in the first number is always set to 1

    Now at cell 3
    -                            Decrement cell 3 to restore previous value
    <<<++                        Set cell 0 to 2
    >>>                          Go back to cell 3
    >++++[<-------->-]<          Subtract 32 from cell 3 to check for space
    [
        -------------            Subtract 13 from cell 3 to check for minus
        The code within these brackets only runs if minus was not detected
        [
            ---                  Subtract 3 from cell 3 to get true value
            <<<-                 Decrement cell 0
            >>>>>[>>>]           Go 2 cells to right of first digit written
            +                    Set it to 1
            This loop shifts all written digits 3 cells to the right
            [
                <<[->>>+<<<]     Swap second cell to left with cell to right
                <                Go to next digit
            ]
        ]
        <<[>]<                   Go to cell 0
        +                        Increment cell 0
        >>>,                     Read next digit into cell 3
        >++++[<-------->-]<      Subtract 32 from cell 3 to check for space
    ]

    Now at cell 3
    <<+++                        Set cell 1 to 3
    >>>,                         Read digit into cell 4
    ----------                   Subtract 10 from cell 4 to check for newline
    [
        +<++++++[>------<-]>     Subtract 35 from cell 4 to check for minus
        The code within these brackets only runs if minus was not detected
        [
            --                   Subtract 2 from cell 4
            <<<+                 Increment cell 1
            >>>[>>>]<<           Go 1 cell to right of first digit written
            [-]+                 Set it to 1 if it is not already 1
            This loop shifts all written digits of second number 3 cells right
            [
                <[->>>+<<<]<     Swap cell to left with second cell to right
                <                Go to next digit
            ]
        ]
        <<[>]<                   Go to cell 1
        -                        Decrement cell 1
        >>>,                     Read next digit into cell 4
        ----------               Subtract 10 from cell 4 to check for newline
    ]

    Now at cell 2
    >>>[->>>]                    Decrement each cell "Z" to get true value
    <<<<<[<<<]<<                 Go to cell 0


    ============================================================================
    The matching digits of both numbers are now grouped together:

       | X | Y | Z |

    X: This cell is always set to 1
    Y: Contains a digit from the first number
    Z: Contains the corresponding digit from the second number

    To the right of Z is the X cell of the next least significant digit

    After the sum for each digit:
    Cell X is still 1
    Cell Y is set to the sum for the two digits
    Cell Z is set to 0
    ============================================================================

    Now at cell 0
    --                           Subtract 2 from cell 0
    The code within these brackets only runs if the first integer was negative
    If this is the case we must apply the Method of Complements on its digits
    0 becomes 9 and 1 becomes 8 and so on
    And then we must add 1 to the new number
    [
        >>>>>                    Go to cell 5 (X)
        This loops through every cell X
        [
            ++++++++             Set cell X to 9
            >                    Go to cell Y
            [-<->]               Subtract the value of cell Y from cell X
            <                    Go to cell X
            [->+<]               Move cell X into cell Y
            +                    Set cell X to 1
            >>>                  Go to the next cell X
        ]

        Create an extra digit
        +                        Set new cell X to 1
        >+++++++++               Set new cell Y to 9
        <[<<<]>>>>               Go to cell 6 (Y)
        +                        Increment this cell Y
        <<<<<<                   Go back to cell 0
        ->>+<<                   Move cell 0 into cell 2 to end loop
    ]
    >>[-<<+>>]<                  Move cell 2 into cell 0 (Ends at cell 1)

    Now at cell 1
    --                           Subtract 2 from cell 1
    The code within these brackets only runs if the second integer was negative
    If this is the case we must apply the Method of Complements on its digits
    0 becomes 9 and 1 becomes 8 and so on
    And then we must add 1 to the new number
    [
        >>>>                     Go to cell 5 (X)
        This loops through every cell X
        [
            ++++++++             Set cell X to 9
            >>                   Go to cell Z
            [-<<->>]             Subtract the value of cell Z from cell X
            <<                   Go to cell X
            [->>+<<]             Move cell X into cell Z
            +                    Set cell X to 1
            >>>                  Go to next cell X
        ]

        Create an extra digit
        +                        Set new cell X to 1
        >>+++++++++              Set new cell Z to 9
        <<[<<<]>>>>>             Go to cell 7 (Z)
        +                        Increment this cell Z
        <<<<<<<                  Go back to cell 0

        Now at cell 0
        The code within these brackets only runs if first integer was negative
        Because if it was we need to write the Y cell of the new digit
        [
            >>>>>[>>>]<<         Go to new cell Y
            +++++++++            Set it to 9
            <[<<<]<<             Go back to cell 0
            ->>+<<               Move cell 0 into cell 2 to end loop
        ]

        >>[-<<+>>]<              Move cell 2 back into cell 0 (Ends at cell 1)
        -<+>                     Add cell 1 into cell 0 to end loop
    ]
    >>>>                         Go to cell 5

    Now at cell 5 (X)
    [
        Now at cell X
        >                        Go to cell Y
        [->+<]                   Add cell Y into cell Z and set cell Y to 0
        >                        Go to cell Z

        Move cell Z back into cell Y
        [-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>
            The code within these brackets only runs if after 9 move operations
            cell Z is still positive indicating that cell Z was at least 10
            [
                <[-]-            Subtract 10 from cell Y (for carrying)
                >>               Go to next digit's cell X
                [-]+             Make a 1 here if there isn't already one
                >+               Add 1 to next digit's cell Y (for carrying)
                <<               Go back to current digit's cell Z
                It's possible to double carry here due to Method of Complements
                [-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>
                    The code within these brackets only runs if after 19 move
                    operations cell Z is still positive indicating it was 20
                    [
                        <[-]-    Subtract 10 from cell Y (for carrying)
                        >>>+     Add 1 to next digit's cell Y (for carrying)
                        <<       Go back to current digit's cell Z
                        -<+>     Move the remainder of cell Z into cell Y
                    ]
                ]]]]]]]]]]
            ]
        ]]]]]]]]]

        >                        Go to the next digit's cell X
    ]
    <<<[<<<]<<                   Go to cell 0

    Now at cell 0
    The code within these brackets only runs if
    either of or both of the input numbers were negative
    If this is the case we must test if there exists an extra leading digit
    If there is an extra leading digit we must increment cell 0
    and remove the extra
    [
        >>>>>[>>>]<              Go to most significant digit's cell Z
        +                        Set it to 1
        <-                       Decrement cell Y
        The code within these brackets only runs if the leading digit is not 1
        [
            +                    Increment cell Y
            >-                   Decrement cell Z
            <                    Go back to cell Y
            [->>+<<]             Move cell Y into next cell X to end loop
        ]
        >>[-<<+>>]<              Move next cell X back into cell Y (Ends at Z)
        The code within these brackets only runs if the leading digit is 1
        If the extra leading digit exists it is always 1
        [
            <<[<<<]<<            Go to cell 0
            +                    Increment cell 0
            >>>>>[>>>]<          Go back to cell Z
            -                    Set cell Z to 0
            <<-                  Set cell X to 0 (to remove digit)
            <                    Go to next most significant digit's cell Z
        ]
        <<[<<<]<<                Go to cell 0
        [->+<]                   Move cell 0 into cell 1 to end loop
    ]
    >[-<+>]<                     Move cell 1 back into cell 0

    Now at cell 0
    The code within these brackets only runs if cell 0 is odd (rather than even)
    If cell 0 is odd then the sum is negative
    In this case we must use the Method of Complements on the digits in the sum
    And then add 1 to the new sum
    Afterwards cell 0 is set to 0 if the sum is positive or 1 if it is negative
    [--[
        >++[--->+<---]>++.[-]    Print a minus sign (Ends at cell 2)
        >>>                      Go to cell 5 (X)
        This loops through every cell X
        [
            ++++++++             Set cell X to 9
            >                    Go to cell Y
            [-<->]               Subtract the value of cell Y from cell X
            <                    Go to cell X
            [->+<]               Move cell X into cell Y
            +                    Set cell X to 1
            >>>                  Go to the next cell X
        ]
        <<<[<<<]<                Go to cell 1
        +                        Set it to 1
        <[+]                     Set cell 0 to 0 to end loop
    ]]

    Next we must get rid of any extra leading zeroes
    >>>>>[>>>]<                  Go to most significant digit's cell Z
    +                            Set it to 1
    This loop goes through all leading zero digits
    [
        <                        Go to cell Y
        The code within these brackets only runs if the leading digit is not 0
        [
            >-                   Decrement cell Z
            <                    Go back to cell Y
            [->>+<<]             Move cell Y into next cell X to end loop
        ]
        >>[-<<+>>]<              Move next cell X back into cell Y (Ends at Z)
        The code within these brackets only runs if the leading digit is 0
        If this happens we must remove the leading digit
        [
            <<-                  Set cell X to 0 (to remove digit)
            <                    Go to next most significant digit's cell Z
            +                    Set it to 1
            >>>-                 Set current cell Z to 0 to end loop
        ]
        <<<<<[<<<]>>             Go to cell 4
        [-]                      Set cell 4 to 0
        >[>>>]<                  Go to next most significant digit's cell Z
    ]
    <<[<<<]>>>                   Go to cell 5
    [-]+                         Set cell 5 to 1
    <<<<                         Go to cell 1

    Now at cell 1
    The code within these brackets only runs if the sum is negative
    If this is the case we still have to add 1 to (absolute value of the) sum
    [
        >>>>>                    Go to cell 6 (Y)
        +                        Add 1 to cell 6 (Y)
        <                        Go to cell 5 (X)
        [
            Now at cell X
            >                    Go to cell Y
            [->+<]               Add cell Y into cell Z and set cell Y to 0
            >                    Go to cell Z

            Move cell Z back into cell Y
            [-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>
                The code within these brackets only runs if after 9 move
                operations cell Z is still positive indicating that cell Z was
                at least 10
                [
                    <[-]-        Subtract 10 from cell Y (for carrying)
                    >>           Go to next digit's cell X
                    [-]+         Make a 1 here if there isn't already one
                    >+           Add 1 to next digit's cell Y (for carrying)
                    <<           Go back to current digit's cell Z
                    [-<+>]       Move the remainder of cell Z into cell Y
                ]
            ]]]]]]]]]

            >                    Go to the next digit's cell X
        ]

        <<<[<<<]<                Go back to cell 1
        -                        Set cell 1 to 0 to end loop
    ]

    >>>>[>>>]<<<                 Go to most significant digit's cell X

    This loop prints all the digits in the sum by adding 48
    [
        +++++[>++++++++<-]>      Add 48 to cell X
        .[-]                     Print
        <<<<                     Go to next most significant digit's cell X
    ]
    >                            Go to cell 3

    Now at cell 3
    ++++++++++.                  Print a newline using cell 3
    ,                            Read digit into cell 3 from next line
    +                            Increment cell 3 to check for EOF (255)
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
+[[-],----------]>>>,+[-<<<++>>>>++++[<-------->-]<[-------------[---<<<->>>>>[>
>>]+[<<[->>>+<<<]<]]<<[>]<+>>>,>++++[<-------->-]<]<<+++>>>,----------[+<++++++[
>------<-]>[--<<<+>>>[>>>]<<[-]+[<[->>>+<<<]<<]]<<[>]<->>>,----------]>>>[->>>]<
<<<<[<<<]<<--[>>>>>[++++++++>[-<->]<[->+<]+>>>]+>+++++++++<[<<<]>>>>+<<<<<<->>+<
<]>>[-<<+>>]<--[>>>>[++++++++>>[-<<->>]<<[->>+<<]+>>>]+>>+++++++++<<[<<<]>>>>>+<
<<<<<<[>>>>>[>>>]<<+++++++++<[<<<]<<->>+<<]>>[-<<+>>]<-<+>]>>>>[>[->+<]>[-<+>[-<
+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[<[-]->>[-]+>+<<[-<+>[-<+>[-<+>[-<+>[-<+>[-
<+>[-<+>[-<+>[-<+>[-<+>[<[-]->>>+<<-<+>]]]]]]]]]]]]]]]]]]]]]>]<<<[<<<]<<[>>>>>[>
>>]<+<-[+>-<[->>+<<]]>>[-<<+>>]<[<<[<<<]<<+>>>>>[>>>]<-<<-<]<<[<<<]<<[->+<]]>[-<
+>]<[--[>++[--->+<---]>++.[-]>>>[++++++++>[-<->]<[->+<]+>>>]<<<[<<<]<+<[+]]]>>>>
>[>>>]<+[<[>-<[->>+<<]]>>[-<<+>>]<[<<-<+>>>-]<<<<<[<<<]>>[-]>[>>>]<]<<[<<<]>>>[-
]+<<<<[>>>>>+<[>[->+<]>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[<[-]->>[-]+
>+<<[-<+>]]]]]]]]]]]>]<<<[<<<]<-]>>>>[>>>]<<<[+++++[>++++++++<-]>.[-]<<<<]>+++++
+++++.,+]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
