module adder_half(a,b,S,C);
    input a,b;
    output S,C;
    assign {C,S}=a+b;
    //assign S=a^b;
    //assign C=a&b;
endmodule