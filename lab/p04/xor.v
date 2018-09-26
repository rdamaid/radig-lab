module _xor(A, B, Y);
    input   A, B;
    output  Y;
    assign  Y = A ^ B;
endmodule

module _xor_test;
    reg     A, B;
    wire    Y;
    _xor    T(A, B, Y);

    initial begin
        $dumpvars;
        $monitor("%d %d | %d", A, B, Y);
        A = 0; B = 0;
    #1  A = 0; B = 1;
    #1  A = 1; B = 0;
    #1  A = 1; B = 1;
    #1  $finish;
    end
endmodule
