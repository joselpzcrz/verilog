`timescale 1ns/1ps

module hello_world;

    reg [3:0] a;
    reg [3:0] b;

    wire [3:0] y;

    assign y = a & b;

    initial begin

        $dumpfile("hello_world.vcd");
        $dumpvars(0, hello_world);

	b = 4'b1010;
	a = 4'b0011;
        $display("A: time = %0d ns, a = %b", $time, a);
	
	#10
	a = ~a;
	$display("B: time = %0d ns, a = %b", $time, a);

	#5
	a = ~a;
	$display("C: time = %0d ns, a = %b", $time, a);

	#5
	$finish;
    end

endmodule
