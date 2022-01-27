module BCD2(
    input Cin,
    
    input a1,
    input a2,
    input a3,
    input a4,
    
    input b1,
    input b2,
    input b3,
    input b4,
    
    output sum1,
    output sum2,
    output sum3,
    output sum4,
    
    output cout
    );
wire s1,s2,s3,s4;
wire c1,c2,c3,c4;
wire C1,C2,C3,C4;

assign s1 = (a1^b1)^Cin;
assign c1 = (Cin && (a1^b1)) || (a1 && b1);

assign s2 = (a2^b2)^c1;
assign c2 = (c1 && (a2^b2)) || (a2 && b2);

assign s3 = (a3^b3)^c2;
assign c3 = (c2 && (a3^b3)) || (a3 && b3);

assign s4 = (a4^b4)^c3;
assign c4 = (c3 && (a4^b4)) || (a4 && b4);

///
assign cout = (c4 || (s3 && s4) || (s2 && s4));
////

assign sum1 = s1;
assign C1 = (0 && (s1^0)) || (s1 && 0);

assign sum2 = (s2^cout)^C1;
assign C2 = (C1 && (s2^cout)) || (s2 && cout);

assign sum3 = (s3^cout)^C2;
assign C3 = (C2 && (s3^cout)) || (s3 && cout);

assign sum4 = (s4^0)^C3;
assign C4 = (C3 && (s4^0)) || (s4 && 0);

endmodule