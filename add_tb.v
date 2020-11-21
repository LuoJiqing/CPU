module add_tb();
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [4:0] ans;

    adder_4 unit(.a(a), .b(b), .CIN(cin), .s(ans[3:0]), .c(ans[4]));

    initial begin
        a = 4'd10;
        b = 4'd9;
        cin = 1'd1;

        #10 
        a = 4'd6;
        b = 4'd8;
        cin = 1'd1;
        
        #10
        a = 4'd5;
        b = 4'd7;
        cin = 1'd1;
    end
endmodule