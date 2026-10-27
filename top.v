module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

single_bit_memory inst_a(
    .D(sw[0]),
    .E(btnC),
    .Q(led[0]),
    .notQ(led[1])
);
memory_system inst_b(
    .data(sw[15:8]),
    .select(sw[7:6]),
    .store(btnC),
    .memory(led[15:8])
);

endmodule
