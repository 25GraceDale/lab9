module memory_system(
    input [7:0] data,
    input [1:0] select,
    input store,
    output reg [7:0] memory
);

reg A, B, C, D;

always @(*) begin
    case(select)
        2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, store}; 
        2'b01: {D, C, B, A} <= {1'b0, 1'b0, store, 1'b0};
        2'b10: {D, C, B, A} <= {1'b0, store, 1'b0, 1'b0};
        2'b11: {D, C, B, A} <= {store, 1'b0, 1'b0, 1'b0};
    endcase
end

byte_memory inst_a(
    .data(data),
    .store(A),
    .memory(mem_0)
);
byte_memory inst_b(
    .data(data),
    .store(B),
    .memory(mem_1)
);
byte_memory inst_c(
    .data(data),
    .store(C),
    .memory(mem_2)
);
byte_memory inst_d(
    .data(data),
    .store(D),
    .memory(mem_3)
);

wire [7:0] mem_0, mem_1, mem_2, mem_3;

always @(*) begin 
    case(select)
        2'b00: {memory} <= {mem_0}; 
        2'b01: {memory} <= {mem_1};
        2'b10: {memory} <= {mem_2};
        2'b11: {memory} <= {mem_3};
    endcase
end

endmodule
