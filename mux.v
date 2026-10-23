module mux(

    input [3:0]Ceo,
    input [3:0]Yn,
    input [3:0]Fred,
    input [3:0]Jill,
    input btnU,
    input btnL, 
    input btnC,
    output [3:0]dataOut
    
);

wire [1:0]muxSel;
wire [3:0]data;

// if btnc is true then update the multiplex / demultiplex false stay the same
assign muxSel = {btnU,btnL};

assign data = (muxSel == 2'b00 ? Ceo : muxSel == 2'b01 ? Yn : muxSel == 2'b10 ? Fred: muxSel == 2'b11 ? Jill : 4'b000);
//assign data = (muxSel == 2'b01 ? Yn : 4'b000);
//assign data = (muxSel == 2'b10 ? Fred : 4'b000);
//assign data = (muxSel == 2'b11 ? Jill : 4'b000);

//always @(data, muxSel)
//    begin
//        case(muxSel)
//            2'b00: data = Ceo; // 0
//            2'b01: data = Yn; // 1
//            2'b10: data = Fred; // 2
//            2'b11: data = Jill; // 3
//            default data = 1'b0; // ???
//        endcase
//    end

assign dataOut = (btnC ? data : 4'b0000);



endmodule