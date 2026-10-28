`timescale 1ns/1ps

module and_gate_tb;

    reg[3:0] a;
    reg[3:0] b;
    wire[3:0] y;

    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

        a = 4'b0011;
        b = 4'b1010;
        #10;
        $display("a=%b b=%b y=%b", a, b, y);

        a = 4'b1100;
        #10;
        $display("a=%b b=%b y=%b", a, b, y);

        $finish;
    end

endmodule
