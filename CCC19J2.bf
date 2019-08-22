WARNING: The number of lines L is always a single digit number
WARNING: The input always ends with a newline (10)

Now at cell 0

,                                  Input the number L into cell 0
>++++++[<-------->-]               Subtract 48 from cell 0 to get true value
,[-]                               Consume newline at cell 1
<                                  Go back to cell 0

This loop runs L times (once for each line)
[
    >>>                            Go to cell 3

    Now at cell 3
    This loop records the number N ending at space (32) into cell 1
    ,                              Read most significant digit into cell 3
    <++++++[>--------<-]>          Subtract 48 from cell 3 to get true value
    [-<<+>>]                       Move cell 3 into cell 1
    ,                              Read next most significant digit into cell 3
    <++++[>--------<-]>            Subtract 32 from cell 3 to check for space
    [
        ----------------           Subtract 16 from cell 3 to get true value
        <<                         Go to cell 1
        [->++++++++++<]            Multiply cell 1 by 10 and move into cell 2
        >>                         Go to cell 3
        [-<+>]                     Add cell 3 into cell 2 and clear cell 3
        <                          Go to cell 2
        [-<+>]                     Move cell 2 back into cell 1
        >,[-]                      Go to cell 3 and consume space to end loop
    ]
    <,                             Record the character to print into cell 2
    <                              Go to cell 1

    Now at cell 1
    This loop runs N times (once for each time to print the character)
    [
        >.                         Print the character in cell 2
        <-                         Decrement cell 1
    ]

    >,.[-]                         Go to cell 2 and print newline (then consume)
    <<-                            Decrement cell 0
]

MINIFIED CODE:
[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[
,>++++++[<-------->-],[-]<[>>>,<++++++[>--------<-]>[-<<+>>],<++++[>--------<-]>
[----------------<<[->++++++++++<]>>[-<+>]<[-<+>]>,[-]]<,<[>.<-]>,.[-]<<-]
]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
