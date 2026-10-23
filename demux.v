module demux(

    input enable,
    input [3:0]dataIn,
    input [1:0]sel,
    output [3:0]lib, 
    output [3:0]fireDp, 
    output [3:0]school, 
    output [3:0]ribShack // one data output line
);

wire [1:0] demux; //2 wide
wire [3:0] package;
//assign pacakge = (btnC ? dataIn : 4'b0000);
//assign pacakge = (btnC ? 4'b1111 : 4'b0000);
//assign demux[0] = btnD;
//assign demux[1] = btnR;


//assign lib = (demux == 2'b00 ? 4'b1111 : 4'b0000);
//assign fireDp = (demux == 2'b01 ? 4'b1111 : 4'b0000);
//assign school = (demux == 2'b10 ? 4'b1111 : 4'b0000);
//assign ribShack = (demux == 2'b11 ? 4'b1111 : 4'b0000);

assign lib = enable ? (sel == 2'b00 ? dataIn : 4'b0000) : 4'b0000;
assign fireDp = enable ? (sel == 2'b01 ? dataIn : 4'b0000) : 4'b0000;
assign school = enable ? (sel == 2'b10 ? dataIn : 4'b0000) : 4'b0000;
assign ribShack = enable ? (sel == 2'b11 ? dataIn : 4'b0000) : 4'b0000;

//assign lib = 4'b1111;
//assign fireDp = 4'b1111;
//assign school = 4'b1111;
//assign ribShack = 4'b1111;

//always @(dataIn, demux, package) //senesitivity list
//    begin
       
//        case (demux)
//            2'b00: lib = package; //00
//            2'b01: fireDp = package; //01
//            2'b10: school = package; //10
//            2'b11: ribShack = package; //11
//        endcase
//    end
endmodule