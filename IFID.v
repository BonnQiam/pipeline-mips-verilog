module IFID(
    clk,
    iInstr,iNextPC,
    oInstr,oNextPC,
    enable
);

input clk, enable;
input [31:0] iInstr;
input [31:0] iNextPC;

output [31:0] oInstr;
output [31:0] oNextPC;

reg [31:0] oInstr;
reg [31:0] oNextPC;

initial begin
    oNextPC=32'b0;
end

always @(posedge clk)
begin
    if(enable) begin
        oInstr <= iInstr;
        oNextPC <= iNextPC;
    end
end

endmodule