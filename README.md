# Jorian 840

44-key wireless split keyboard in a 100x100 mm PCB.

Two main versions are available with plenty of supported switches.

Plates and bottoms are to be cut from metal, acryllic or dual-layered plastic.

## Disclaimer

This is a modified version of Joric's Jorian.

This release was not tested yet.

The keyboard layout was derived from the [Jian layout](http://www.keyboard-layout-editor.com/#/gists/4b6c2af67148f58ddd6c6b2976c4370f) (just visually, there was no actual copying involved).
Please buy the Jian from its author, [/u/KgOfHedgehogs](http://reddit.com/u/KgOfHedgehogs) at [the official store](https://killswit.ch)

## Features

* Wireless via Holyiot 18010 modules
* Fully-featured ZMK split
* Uses either 233350 310 mAh, LIR2032 40 mAh or CR2032 500 mAh (non-rechargeable) batteries
* Charger on/off switch (for non-rechargeable batteries)
* Proper case support
* Can be built with 7 or 8 mm. standoffs even with the rechargeable battery under the PCB

## Download

You can download Gerber files and schematic in the [releases section](https://github.com/krikun98/jorian840/releases).

## Instructions

Please refer to the public [Jorian wiki](https://github.com/krikun98/jorian840/wiki).

For building the artifacts locally you need Docker. 

Just run the `build.sh` script.

## Links

### Version 0.2

MX Hotswap 

[IBOM](https://htmlpreview.github.io/?https://github.com/krikun98/jorian840/blob/holyiot/pcb/hotswap/bom/ibom.html)

[gerbers](../../releases/latest/download/pcb_hotswap_gerbers.zip)

front|back
--|--
![front](../../releases/latest/download/pcb_hotswap.png)|![back](../../releases/latest/download/pcb_hotswap_back.png)


Solder (MX/Alps/Omron B3G-S)

[IBOM](https://htmlpreview.github.io/?https://github.com/krikun98/jorian840/blob/holyiot/pcb/solder/bom/ibom.html)

[gerbers](../../releases/latest/download/pcb_solder_gerbers.zip)

front|back
--|--
![front](../../releases/latest/download/pcb_solder.png)|![back](../../releases/latest/download/pcb_solder_back.png)

[Case files](../../releases/latest/download/case_files.zip) for all variations.