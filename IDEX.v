module IDEX(clock,
            iInstr,
            iRegWrite,iALUSrc,iMemRead,iMemWrite,iMemToReg,iBranch,iJump,
            iALUCtrl,
            iA,iB,
            iwriteRegWire,
            ioutSignEXT,iPC,iNPC1,
            
            oInstr,
            oRegWrite,oALUSrc,oMemRead,oMemWrite,oMemToReg,oBranch,oJump,
            oALUCtrl,
            oA,oB,
            owriteRegWire,
            ooutSignEXT,oPC,oNPC1,
            enable);

input [31:0] iInstr;
input clock,enable;
input iRegWrite,iALUSrc,iMemRead,iMemWrite,iMemToReg,iBranch,iJump;
input [31:0] iA,iB,ioutSignEXT,iPC,iNPC1;
input [3:0]  iALUCtrl;
input [4:0]  iwriteRegWire;

output [31:0] oInstr;
output oRegWrite,oALUSrc,oMemRead,oMemWrite,oMemToReg,oBranch,oJump;
output [31:0] oA,oB,ooutSignEXT,oPC,oNPC1;
output [3:0]  oALUCtrl;
output [4:0]  owriteRegWire;

reg [31:0] oInstr;
reg oRegWrite,oALUSrc,oMemRead,oMemWrite,oMemToReg,oBranch,oJump;
reg [31:0] oA,oB,ooutSignEXT,oPC,oNPC1;
reg [3:0]  oALUCtrl;
reg [4:0]  owriteRegWire;


initial begin
    oPC=32'b0;
end

always @(posedge clock)
begin
    if(enable)begin
        oInstr      <= iInstr;

        oRegWrite   <= iRegWrite;
        oALUSrc     <= iALUSrc;
        oMemRead    <= iMemRead;
        oMemWrite   <= iMemWrite;
        oMemToReg   <= iMemToReg;
        oBranch     <= iBranch;
        oJump       <= iJump;

        oPC         <= iPC;
        oA          <= iA;
        oB          <= iB;
        ooutSignEXT <= ioutSignEXT;
        oNPC1       <= iNPC1;

        oALUCtrl    <= iALUCtrl;

        owriteRegWire   <= iwriteRegWire;
    end
end
endmodule

