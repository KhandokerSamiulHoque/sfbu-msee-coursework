# MSEE coursework, San Francisco Bay University (2023)

Labs and assignments from my Master of Science in Electrical Engineering at San Francisco Bay University (Jan 2023 to Aug 2024). I originally submitted each one as its own repository. In October 2026 I merged them here, one folder per course, so the work is easier to browse.

| Folder | Course | What is inside |
|---|---|---|
| [`ee461-digital-design-hdl/`](ee461-digital-design-hdl/) | EE461 Digital Design and HDL | SystemVerilog designs with testbenches: full adders, D flip-flops (sync and async), every basic gate in both `assign` and `always` style, lab reports |
| [`ee488-computer-architecture/`](ee488-computer-architecture/) | EE488 | MIPS assembly assignments (reports with code) |
| [`ce450-raspberry-pi-python/`](ce450-raspberry-pi-python/) | CE450 | Raspberry Pi hardware labs in Python: GPIO, 74HC595 seven-segment display, I2C LCD; C and Python exercises |
| [`business-analytics/`](business-analytics/) | Business analytics project | Time-series visualization of forum page views with pandas, Matplotlib and Seaborn |

## Running the HDL examples
Each `design.sv` / `testbench.sv` pair runs on [EDA Playground](https://edaplayground.com) or with Icarus Verilog:

```bash
iverilog -g2012 -o sim design.sv testbench.sv && vvp sim
```

## Lab demo videos
The CE450 labs were graded from screen recordings of the circuits running on a Raspberry Pi. The 18 videos (about 214 MB) are attached to the [v2023 release](../../releases/tag/v2023) instead of the git history.

## Timeline

| Folder | Submitted |
|---|---|
| ee461 lab-01 to lab-08, quiz, assignments 01 to 06 | Jan 22 to Apr 23, 2023 |
| ee488 assignments 01 to 07 | Feb 7 to Apr 23, 2023 |
| ce450 labs 01 to 11, midterm, lecture assignments 01 to 04 | Jun 5 to Aug 17, 2023 |
| business-analytics | Nov 26, 2023 |

These are student submissions, kept as they were handed in apart from file names.
