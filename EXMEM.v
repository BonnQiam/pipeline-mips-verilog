module EXMEM(
        clock,
        iInstr,
        iRegWrite,iMemRead,iMemWrite,iMemToReg,iBranch,iJump,
        iB,iResult,iZero,
        inextPCBranch,iNPC1,iPC,iwriteRegWire,

        oInstr,
        oRegWrite,oMemRead,oMemWrite,oMemToReg,oBranch,oJump,
        oB,oResult,oZero,
        onextPCBranch,oNPC1,oPC,owriteRegWire,
        enable);

input clock,enable;
input iZero;
input [31:0] iInstr;
input iRegWrite,iMemRead,iMemWrite,iMemToReg,iBranch,iJump;
input [4:0] iwriteRegWire;
input [31:0] iB,iResult, inextPCBranch,iNPC1,iPC;

output [31:0] oInstr;
output oRegWrite,oMemRead,oMemWrite,oMemToReg,oBranch,oJump;
output [4:0] owriteRegWire;
output oZero;
output [31:0] oB,oResult,onextPCBranch,oNPC1,oPC;

reg [31:0] oInstr;
reg oRegWrite,oMemRead,oMemWrite,oMemToReg,oBranch,oJump;
reg [4:0] owriteRegWire;
reg [31:0] oB,oResult,oZero,onextPCBranch,oNPC1,oPC;

initial begin
    oPC=32'b0;
    oInstr=32'b0;
end

always @(posedge clock)
begin
    if(enable)begin
        oInstr      <=iInstr;
        
        oRegWrite   <=iRegWrite;
        oMemRead    <=iMemRead;
        oMemWrite   <=iMemWrite;
        oMemToReg   <=iMemToReg;
        oBranch     <=iBranch;
        oJump       <=iJump;

        
        oB          <=iB;
        oResult     <=iResult;
        oZero       <=iZero;

        onextPCBranch   <= inextPCBranch;
        oNPC1           <= iNPC1;
        oPC             <= iPC;
        owriteRegWire   <= iwriteRegWire;
        
    end
end
endmodule


