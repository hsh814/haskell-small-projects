
# Haskell small projects

## list
- [haskell-H99-problems](#haskell-H99-problems)
- [haskell-spiral-matrix](#haskell-spiral-matrix)
- [multiplication-table](#multiplication-table)

## [haskell-H99-problems](./haskell-H99-problems)

- [explanation](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems)

## [haskell-spiral-matrix](./haskell-spiral-matrix)

- Implementation of spiral matrix in haskell.

- 달팽이 배열을 하스켈로 구현

```
$ git clone https://github.com/hsh814/haskell-small-projects.git
$ cd haskell-spiral-matrix
$ stack build
$ stack exec haskell-spiral-matrix-exe
Input n: 
12
0   1   2   3   4   5   6   7   8   9   10  11  
43  44  45  46  47  48  49  50  51  52  53  12  
42  79  80  81  82  83  84  85  86  87  54  13  
41  78  107 108 109 110 111 112 113 88  55  14  
40  77  106 127 128 129 130 131 114 89  56  15  
39  76  105 126 139 140 141 132 115 90  57  16  
38  75  104 125 138 143 142 133 116 91  58  17  
37  74  103 124 137 136 135 134 117 92  59  18  
36  73  102 123 122 121 120 119 118 93  60  19  
35  72  101 100 99  98  97  96  95  94  61  20  
34  71  70  69  68  67  66  65  64  63  62  21  
33  32  31  30  29  28  27  26  25  24  23  22 
```

# [multiplication-table](./multiplication-table)

- 하스켈로 구구단 구현

```
$ git clone https://github.com/hsh814/haskell-small-projects.git
$ cd multiplication-table
$ stack build
$ stack exec multiplication-table-exe
Maximum number? 
19
Split interval? 
5
  2x  1=  2 |   3x  1=  3 |   4x  1=  4 |   5x  1=  5 |   6x  1=  6
  2x  2=  4 |   3x  2=  6 |   4x  2=  8 |   5x  2= 10 |   6x  2= 12
  2x  3=  6 |   3x  3=  9 |   4x  3= 12 |   5x  3= 15 |   6x  3= 18
  2x  4=  8 |   3x  4= 12 |   4x  4= 16 |   5x  4= 20 |   6x  4= 24
  2x  5= 10 |   3x  5= 15 |   4x  5= 20 |   5x  5= 25 |   6x  5= 30
  2x  6= 12 |   3x  6= 18 |   4x  6= 24 |   5x  6= 30 |   6x  6= 36
  2x  7= 14 |   3x  7= 21 |   4x  7= 28 |   5x  7= 35 |   6x  7= 42
  2x  8= 16 |   3x  8= 24 |   4x  8= 32 |   5x  8= 40 |   6x  8= 48
  2x  9= 18 |   3x  9= 27 |   4x  9= 36 |   5x  9= 45 |   6x  9= 54
  2x 10= 20 |   3x 10= 30 |   4x 10= 40 |   5x 10= 50 |   6x 10= 60
  2x 11= 22 |   3x 11= 33 |   4x 11= 44 |   5x 11= 55 |   6x 11= 66
  2x 12= 24 |   3x 12= 36 |   4x 12= 48 |   5x 12= 60 |   6x 12= 72
  2x 13= 26 |   3x 13= 39 |   4x 13= 52 |   5x 13= 65 |   6x 13= 78
  2x 14= 28 |   3x 14= 42 |   4x 14= 56 |   5x 14= 70 |   6x 14= 84
  2x 15= 30 |   3x 15= 45 |   4x 15= 60 |   5x 15= 75 |   6x 15= 90
  2x 16= 32 |   3x 16= 48 |   4x 16= 64 |   5x 16= 80 |   6x 16= 96
  2x 17= 34 |   3x 17= 51 |   4x 17= 68 |   5x 17= 85 |   6x 17=102
  2x 18= 36 |   3x 18= 54 |   4x 18= 72 |   5x 18= 90 |   6x 18=108
  2x 19= 38 |   3x 19= 57 |   4x 19= 76 |   5x 19= 95 |   6x 19=114

  7x  1=  7 |   8x  1=  8 |   9x  1=  9 |  10x  1= 10 |  11x  1= 11
  7x  2= 14 |   8x  2= 16 |   9x  2= 18 |  10x  2= 20 |  11x  2= 22
  7x  3= 21 |   8x  3= 24 |   9x  3= 27 |  10x  3= 30 |  11x  3= 33
  7x  4= 28 |   8x  4= 32 |   9x  4= 36 |  10x  4= 40 |  11x  4= 44
  7x  5= 35 |   8x  5= 40 |   9x  5= 45 |  10x  5= 50 |  11x  5= 55
  7x  6= 42 |   8x  6= 48 |   9x  6= 54 |  10x  6= 60 |  11x  6= 66
  7x  7= 49 |   8x  7= 56 |   9x  7= 63 |  10x  7= 70 |  11x  7= 77
  7x  8= 56 |   8x  8= 64 |   9x  8= 72 |  10x  8= 80 |  11x  8= 88
  7x  9= 63 |   8x  9= 72 |   9x  9= 81 |  10x  9= 90 |  11x  9= 99
  7x 10= 70 |   8x 10= 80 |   9x 10= 90 |  10x 10=100 |  11x 10=110
  7x 11= 77 |   8x 11= 88 |   9x 11= 99 |  10x 11=110 |  11x 11=121
  7x 12= 84 |   8x 12= 96 |   9x 12=108 |  10x 12=120 |  11x 12=132
  7x 13= 91 |   8x 13=104 |   9x 13=117 |  10x 13=130 |  11x 13=143
  7x 14= 98 |   8x 14=112 |   9x 14=126 |  10x 14=140 |  11x 14=154
  7x 15=105 |   8x 15=120 |   9x 15=135 |  10x 15=150 |  11x 15=165
  7x 16=112 |   8x 16=128 |   9x 16=144 |  10x 16=160 |  11x 16=176
  7x 17=119 |   8x 17=136 |   9x 17=153 |  10x 17=170 |  11x 17=187
  7x 18=126 |   8x 18=144 |   9x 18=162 |  10x 18=180 |  11x 18=198
  7x 19=133 |   8x 19=152 |   9x 19=171 |  10x 19=190 |  11x 19=209

 12x  1= 12 |  13x  1= 13 |  14x  1= 14 |  15x  1= 15 |  16x  1= 16
 12x  2= 24 |  13x  2= 26 |  14x  2= 28 |  15x  2= 30 |  16x  2= 32
 12x  3= 36 |  13x  3= 39 |  14x  3= 42 |  15x  3= 45 |  16x  3= 48
 12x  4= 48 |  13x  4= 52 |  14x  4= 56 |  15x  4= 60 |  16x  4= 64
 12x  5= 60 |  13x  5= 65 |  14x  5= 70 |  15x  5= 75 |  16x  5= 80
 12x  6= 72 |  13x  6= 78 |  14x  6= 84 |  15x  6= 90 |  16x  6= 96
 12x  7= 84 |  13x  7= 91 |  14x  7= 98 |  15x  7=105 |  16x  7=112
 12x  8= 96 |  13x  8=104 |  14x  8=112 |  15x  8=120 |  16x  8=128
 12x  9=108 |  13x  9=117 |  14x  9=126 |  15x  9=135 |  16x  9=144
 12x 10=120 |  13x 10=130 |  14x 10=140 |  15x 10=150 |  16x 10=160
 12x 11=132 |  13x 11=143 |  14x 11=154 |  15x 11=165 |  16x 11=176
 12x 12=144 |  13x 12=156 |  14x 12=168 |  15x 12=180 |  16x 12=192
 12x 13=156 |  13x 13=169 |  14x 13=182 |  15x 13=195 |  16x 13=208
 12x 14=168 |  13x 14=182 |  14x 14=196 |  15x 14=210 |  16x 14=224
 12x 15=180 |  13x 15=195 |  14x 15=210 |  15x 15=225 |  16x 15=240
 12x 16=192 |  13x 16=208 |  14x 16=224 |  15x 16=240 |  16x 16=256
 12x 17=204 |  13x 17=221 |  14x 17=238 |  15x 17=255 |  16x 17=272
 12x 18=216 |  13x 18=234 |  14x 18=252 |  15x 18=270 |  16x 18=288
 12x 19=228 |  13x 19=247 |  14x 19=266 |  15x 19=285 |  16x 19=304

 17x  1= 17 |  18x  1= 18 |  19x  1= 19
 17x  2= 34 |  18x  2= 36 |  19x  2= 38
 17x  3= 51 |  18x  3= 54 |  19x  3= 57
 17x  4= 68 |  18x  4= 72 |  19x  4= 76
 17x  5= 85 |  18x  5= 90 |  19x  5= 95
 17x  6=102 |  18x  6=108 |  19x  6=114
 17x  7=119 |  18x  7=126 |  19x  7=133
 17x  8=136 |  18x  8=144 |  19x  8=152
 17x  9=153 |  18x  9=162 |  19x  9=171
 17x 10=170 |  18x 10=180 |  19x 10=190
 17x 11=187 |  18x 11=198 |  19x 11=209
 17x 12=204 |  18x 12=216 |  19x 12=228
 17x 13=221 |  18x 13=234 |  19x 13=247
 17x 14=238 |  18x 14=252 |  19x 14=266
 17x 15=255 |  18x 15=270 |  19x 15=285
 17x 16=272 |  18x 16=288 |  19x 16=304
 17x 17=289 |  18x 17=306 |  19x 17=323
 17x 18=306 |  18x 18=324 |  19x 18=342
 17x 19=323 |  18x 19=342 |  19x 19=361
```
