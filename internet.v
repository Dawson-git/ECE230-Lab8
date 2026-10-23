module mux(

    input [3:0]Ceo, [3:0]Yn, [3:0]Fred, [3:0]Jill, btnU, btnD, btnL, btnR, btnC,
    output [3:0]lib, [3:0]fireDp, [3:0]school, [3:0]ribShack
    
);

wire [1:0]muxSel;
wire [1:0]demuxSel;
wire [3:0]data;

// if btnc is true then update the multiplex / demultiplex false stay the same
assign muxSel = (btnC ?  {btnU,btnL} : muxSel);
assign demuxSel = (btnC ?  {btnR,btnD} : demuxSel);

always @(data, muxSel)
    begin
        case(muxSel)
            2'b00: 







endmodule