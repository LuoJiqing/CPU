module counter_tb();
    reg clk;
    reg rst;
    wire outa;
    counter_60 unit(.clk(clk), .rst(rst), .outa(outa));

    initial begin
        clk = 1'b0;
        rst = 1'b0;//计数器不工作
        #10
        rst = 1'b1;//计数器复位
        #10 
        rst = 1'b0;
    end

    always #10 clk = ~clk;
endmodule