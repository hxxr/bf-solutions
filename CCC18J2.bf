MMMMMMMMMMMMM PHASE 1 MMMMMMMMMMMMM
Extract the numerical value of N and put it into cell 1

>>>                                Move to cell 3

Now at cell 3
This loop reads the value of N into cell 1 stopping at newline (10)
,                                  Read most significant digit into cell 3
<++++++[>--------<-]>              Subtract 48 from cell 3 to get true value
[-<<+>>]                           Move cell 3 into cell 1
,                                  Read next most significant digit into cell 3
----------                         Subtract 10 from cell 3 to check for newline
[
    >++++++[<------>-]<--          Subtract 38 from cell 3 to get true value
    <<                             Go to cell 1
    [->++++++++++<]                Multiply cell 1 by 10 and move into cell 2
    >>                             Go to cell 3
    [-<+>]                         Add cell 3 into cell 2 and clear cell 3
    <                              Go to cell 2
    [-<+>]                         Move cell 2 back into cell 1
    >                              Go to cell 3

    Now at cell 3
    ,                              Read next most significant digit into cell 3
    ----------                     Subtract 10 from cell 3 to check for newline
]
<<                                 Move to cell 1

MMMMMMMMMMMMM PHASE 2 MMMMMMMMMMMMM
Store yesterday's parking spaces into cells 5 through (N plus 5)
Occupied spaces are stored as 67 and unoccupied spaces are stored as 46

Now at cell 1
This loop stores N number of values from yesterday's parking spots
[
    >>>>                           Go to cell 5
    [>]                            Go right until we hit an empty (zero) cell
    ,                              Store parking space value into this cell
    [<]                            Go left until we get to the empty cell 3
    <<<-                           Decrement cell 1
]
>>>                                Go to cell 4
,[-]                               Consume a newline
>                                  Go to cell 5 (to be known as "cell R")

MMMMMMMMMMMMM PHASE 3 MMMMMMMMMMMMM
Cell 1 is now empty
Yesterday's stored parking space cells are surrounded by all empty cells
We compare values in today's parking spaces with the previously stored values
For each space occupied both yesterday and today increment cell 1 once

Now at cell 5
This loop compares the rows as described above
[
    ============================================================================
    The comparison is done with a cell "train" made of 3 consecutive cells:

            Current cell
                 V
       | P | Q | R |

    P: A buffer cell for subtraction and flagging (initially cell 3)
    Q: To the right of P is where the status of today's space is stored
    R: Status of the corresponding space from yesterday is here to compare with

    Cell P is initially set to 0
    Cell Q is initially set to 0
    Cell R is set at the beginning because we did it in phase 2

    After comparison the P|Q|R cell train moves one cell to the right every time
    leaving beind a trail of cells filled with 1's to its left (for easy access)
    ============================================================================

    Now at cell R
    <,                             Load the next row 3 space into cell Q

    Subtract 46 from both of cells Q and R (uses cell P as well)
    <+++++++++[>>-----<-----<-]>->-

    Now at cell R
    <<+                            Set cell P to 1
    >>                             Go to cell R

    Now at cell R
    The code within these brackets only runs if
    the space was previously occupied (occupied in row 2)
    [
        [-<->]                     Subtract from cells Q and R until cell R is 0
        <                          Go to cell Q

        The code within these brackets only runs if
        the space was previously occupied but currently unoccupied
        (cell Q being nonzero indicates that Q and R were not equal and thus
        the state of the parking space changed over time)
        [
            <-                     Set cell P to 0
            >[+]                   Set cell Q to 0 to end loop
        ]
        <                          Go to cell P

        The code within these brackets only runs if
        the space was always occupied (cell P being nonzero indicates that the
        previous bracket section did not trigger to set cell P to 0)
        [
            -                      Set cell P to 0
            <[<]<                  Go to cell 1 using the trail of 1's
            +                      Increment cell 1
            >>[>]                  Go back to cell P using the trail to end loop
        ]

        >>[-]                      Set cell R to 0 to end loop
    ]

    Now at cell R
    <[-]                           Set cell Q to 0
    <[-]+                          Set cell P to 1 (part of the trail of 1's)
    >>>                            Go to the right of cell R to move train right
]
<<<[-<]<                           Clear the trail of 1's (Ends at cell 1)

MMMMMMMMMMMMM FINAL STEP MMMMMMMMMMMMM
All cells are now empty except for cell 1
Cell 1 now contains the correct value for the number of cells occupied
both yesterday and today
Now we must print the value inside cell 1 in proper base 10

Now at cell 1
Print value of cell 1
<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]++++++++[
<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.<]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
>>>,<++++++[>--------<-]>[-<<+>>],----------[>++++++[<------>-]<--<<[->+++++++++
+<]>>[-<+>]<[-<+>]>,----------]<<[>>>>[>],[<]<<<-]>>>,[-]>[<,<+++++++++[>>-----<
-----<-]>->-<<+>>[[-<->]<[<->[+]]<[-<[<]<+>>[>]]>>[-]]<[-]<[-]+>>>]<<<[-<]<<+>[<
->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]++++++++[<++++++>-]>[<<+>>-]>[<
<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.<]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
