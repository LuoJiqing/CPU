module adder(a,b,cin,s,c);
    input a,b,cin;
    output s,c;
    wire c_0,c_1,s_0;
    adder_half u0(a,b,s_0,c_0);
    adder_half u1(s_0,cin,s,c_1);
    assign c = c_0|c_1;   
endmodule
