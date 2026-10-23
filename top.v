module top(

    input [15:0]sw, 
    input btnU, 
    input btnD, 
    input btnL, 
    input btnR, 
    input btnC,
    output [15:0]led

);

wire [3:0]dataWire;

mux in_mu(

    .Ceo(sw[3:0]),
    .Yn(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .btnU(btnU),
    .btnL(btnL),
    .btnC(btnC),
    .dataOut(dataWire[3:0])
    
);

demux de_mu (

    .sel({btnR,btnD}),
    .enable(btnC),
    .lib(led[3:0]),
    .fireDp(led[7:4]),
    .school(led[11:8]),
    .ribShack(led[15:12]),
    .dataIn(dataWire[3:0])

);



endmodule