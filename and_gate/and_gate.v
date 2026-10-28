`timescale 1ns/1ps

module and_gate(
    input wire[3:0] a,
    input wire[3:0] b,
    output wire[3:0] y    
);

    assign y = a & b;

endmodule
