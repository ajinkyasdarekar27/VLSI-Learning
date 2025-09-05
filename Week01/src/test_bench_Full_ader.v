module test_bench_Full_ader;
	
	reg a,b,c_in;
	wire sum,carry;
	
Full_adder uut(.a(a),.b(b),.c_in(c_in),.sum(sum),.carry(carry));

initial begin

	$dumpfile("FA_tb.vcd");
    $dumpvars(0,test_bench_Full_ader); // tb module name
		  a=0; b=0; c_in=0;
    #100 a=0; b=0; c_in=1;
    #100 a=0; b=1; c_in=0;
    #100 a=0; b=1; c_in=1;
	 #100 a=1; b=0; c_in=0;
    #100 a=1; b=0; c_in=1;
    #100 a=1; b=1; c_in=0;
	 #100 a=1; b=1; c_in=1;
	end
endmodule	 
