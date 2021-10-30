## _MSPSim_ Traces

This file describes the content of the repository where this [README](README.md) file is located.

### Structure of this repository

- `1.txt`, `2.txt`, ..., `10.txt`: Ten text files containing measurement data following the structure as explained in the [History](#history) section of this file.
- `README.md`: this file

### History

This repository (excluding [README](README.md) file) is a copy of a [MSPSim (mementos branch) traces](https://github.com/ransford/mspsim/tree/mementos/traces) stored as `.txt` files. All `.txt` files have been copied to this repository on October 22, 2021. Traces in from the original [MSPSim (mementos branch) traces](https://github.com/ransford/mspsim/tree/mementos/traces) repository have been used in the following research paper.

```BibTeX
@inproceedings{mementos:ransford:asplos:2011,
title = {Mementos: System Support for Long-running Computation on {RFID}-scale Devices},
author = {Benjamin {Ransford} and Jacob {Sorber} and Kevin {Fu}},
booktitle = {Proc. ASPLOS},
pages = {159--170},
year = {2011},
date = mar # " 5--11",
address = {Newport Beach, CA, USA},
publisher = {ACM},
note = {\url{https://doi.org/10.1145/1950365.1950386}}
}
```
We refer to the above paper for the in-depth discussion on the analysis of these files and the context in which they were used.

The original [README.md](https://github.com/ransford/mspsim/tree/mementos/traces/README) contained the following text describing the data collection process and the file structure. Its copy is given below for a quick reference.


> Shane and Jacob recorded these 1-kHz traces on the DAQ by walking around the
PRISMS lab within about eight feet of an RFID reader.  The device being tested
was as follows: the analog front-end from an Intel DL WISP 4.1 connected to a
30 kohm resistor instead of the WISP's digital back-end.  (The MSP430F2132 in
active mode is approximately 20 kohm.)
>
> Each line in each trace looks like this:
><time> <voltage>
>
> The <time> field starts at an arbitrary number and counts milliseconds.  The
<voltage> field is just voltage in volts.

### Copyright

Copyright (C) 2021 [Anonymized]

MIT Licence. See main [License](../../../LICENSE) file of this repository for details.