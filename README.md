# MUX Variations

This project contains several implementations and variations of multiplexers (MUXes) written in Verilog. The project was created to practice combinational logic, Boolean expressions, and Verilog design.

## MUX Designs

* 2:1 Multiplexer
* 2:1 Multiplexer w/ a 4-bit (Gibble) augmentation , so 4 bits in and 4 bits out. 
* 4:1 Multiplexer
* 4:1 Multiplexer w/ a 4-but augmentation
* 8:1 Multiplexer
* 16:1 Multiplexer
* MUX using Boolean logic
* MUX using Verilog's ternary operator

## 2:1 MUX

A 2:1 multiplexer has two data inputs, one select input, and one output.

### Truth Table

| Select | Output |
| :----: | :----: |
|    0   |    A   |
|    1   |    B   |

this truth table is to more so assign the sel when coding in verilog, the actual truth table would have your a and b both being inputs and a variable for your output, with that variable indicating if the output is true or false for whatever case. 

The Boolean expression for the MUX is:

```text
Y = (~S & A) | (S & B)
```

A Verilog implementation can also use the ternary operator:

```verilog
assign Y = S ? B : A;
```

Both implementations produce the same logic.

## Files

* `mux_2to1.v` — 2:1 MUX implementation
* `mux_4to1.v` — 4:1 MUX implementation
* `tb_mux.v` — Testbench used to verify the MUX designs

I will add the rest of the Mux implementations soon, this is just a starting point for practice 9/24/2026

## Simulation

The designs can be simulated using **Icarus Verilog** and viewed using **GTKWave**.
I do not have a line to push out a vcd file for my gtk wave, but I could add one using a $dumpfile and $dumpvarse. 
So those line of code would look something like 

$dumpfile("name of vcd file");
$dumpvars(0, xxx);

## What I Learned

* How multiplexers work at the gate level
* How to translate Boolean expressions into Verilog
* How to use the Verilog ternary operator
* How to create Verilog testbenches
* How to simulate and verify combinational logic
* How different MUX implementations can represent the same logic
