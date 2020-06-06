# MRF - Make readme file

This project aims at creating a README.md file by means of the shell `makeReadme.sh`. It is not intended to be a professional tool but a simple script for projects of any size where a single README.md file is needed. Nevertheless, due to its intrinsic simplicity, it is easily customizable.

I use this script in all my C/C++ project.

What follows is auto-generated using `makeReadme.sh`
---
# Component description


## Struct TestStruct

This is a test struct for your own sake

All is good. Let's try to print a code block
#### Pinout
```
In 0: hello input
```


#### Time diagram
```
|          _______
| hello ___       _____
|
```



#### Table

| LD | CE | CLK | Function
|----|:-----|:----|:--------
|  0 |   0  | X   |  Pause
|  0 |   1  | _/  |  Count
|  1 |   X  | _/  |  Load




## Class TestClass

This is a test class for your own sake

All is good. Let's try to print a code block
#### Pinout
```
In 0: hello input
```


#### Time diagram
```
|       |
| DATA: | X___XXXXXXXX
|       |  ^ start
|       |  __
| CLK:  | _  ________
|       |
|       |
| Q:    | XXXX________
|       |      _______
| !Q:   | XXXXX
|       |      ^ ready
```



#### Table

| LD | CE | CLK | Function
|----|:-----|:----|:--------
|  0 |   0  | X   |  Pause
|  0 |   1  | _/  |  Count
|  1 |   X  | _/  |  Load



