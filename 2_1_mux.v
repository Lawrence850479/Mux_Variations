`timescale 1ns/1ps

module mux2 
(

 input wire a, b,
 input wire sel, 
 output wire y

);

assign y = sel?b:a; // this simplified version of a mux is basically saying, condition ? value if true : value if true.

/* the whole point of a mux is to choose so for instance this 2 - 1 mux is choosing between two inputs, in this case a and b and our select
begin sel. The assign line I have here is the simplest way of designing a mux, so when it comes down to it, it's telling the machine to 
output y = 1 when your input a or b is 1 as well with it's select, in this case y = 1 for 4/8 cases with all the possible inputs. 
When we are going to have it where the y = 1 for a = 0 and b = 1, thus the sel will have to follow with y = 1 when a = 1 and sel = 0. So ideally 
Your input will always have to be 1 to have it for whatever ideal you'd choose. So given a truth table for a mux, your sop would come out to 
y = ~sel*a + sel*b, I know this wouldn't actually work if I wrote it as is, your * would have to be a & and the + would be a |. 

the long formed mux would be 

assign t0 = a & ~sel;
assign t1 = b & sel;
assign y = t0 | t1;

*/

endmodule 