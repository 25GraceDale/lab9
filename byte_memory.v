module byte_memory
#(
    parameter DATA_WIDTH = 8
)
(
    input [DATA_WIDTH - 1:0] data,
    input store,
    output reg [DATA_WIDTH - 1:0] memory
);
always @(store) begin
    if(store)
        memory <= data;
end

endmodule
