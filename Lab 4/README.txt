Nathan Tung (004-059-195)
Mark Iskandar (704-050-889)

On our FPGA board, we use the right-most switch for adjusting the stopwatch (ADJ) and second-right-most switch to select minutes or seconds (SEL). The left push button is our RESET, and the right push button is our PAUSE.

In a nutshell, our design involves a ClockModule that contains frequency dividers in order to convert 100 MHz into the desirable frequencies needed to run the stopwatch. The internal frequency dividers we created are composed of basic dividers (divide by 2 using T flip-flop, and divide by 5 using the BCD mod-10 counter) chained one after another.

Buttons and switches are debounced, and they go into a series of MUXes in order to decide which clock frequencies are used, whether the counters are enabled or reset, and so on. Four BCD counters (one for each digit in the clock) are sequentially chained and pass their outputs into the 7-segment modules (automatically compiled via VHDL code) to be displayed on the FPGA board.

Apart from the 7-segment module, the ClockModule, and the debouncing modules, our design 
is essentially all built on the top-level schematic. Although slightly more complicated, this allows us to get a clearer picture of what the entire system does and how it operates, rather than designing really specific modules that will never get used in any other situations.