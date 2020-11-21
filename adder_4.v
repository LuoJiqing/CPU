module adder_4(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire CIN,
    output wire [3:0] s,
    output wire c
);
    wire [2:0] cin;
    adder unit_0(.a(a[0]), .b(b[0]), .cin(CIN), .s(s[0]), .c(cin[0]));
    adder unit_1(.a(a[1]), .b(b[1]), .cin(cin[0]), .s(s[1]), .c(cin[1]));
    adder unit_2(.a(a[2]), .b(b[2]), .cin(cin[1]), .s(s[2]), .c(cin[2]));
    adder unit_3(.a(a[3]), .b(b[3]), .cin(cin[2]), .s(s[3]), .c(c));
    endmodule