module bmc_encoder(in,clk,rst,out);
input in,clk,rst;
output out;

reg q1, q2;

assign out = q1^q2;

always @(negedge clk or rst)
begin
	if(rst)
	q1 <= 0;
	else
	q1 <= q1^in;
end

always @(posedge clk or rst)
begin
	if(rst)
	q2 <= 0;
	else
	q2 <= !q2;
end


endmodule
