# Ten Green Bottles

Process workshop exercise in Ruby.   

Write a program that returns the lyrics to the classic children's song.   

## Lyrics

Hint: pay particular attention to the penultimate and final verses!  

```
Ten green bottles
Hanging on the wall
Ten green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be nine green bottles
Hanging on the wall

Nine green bottles
Hanging on the wall
Nine green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be eight green bottles
Hanging on the wall

Eight green bottles
Hanging on the wall
Eight green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be seven green bottles
Hanging on the wall

Seven green bottles
Hanging on the wall
Seven green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be six green bottles
Hanging on the wall

Six green bottles
Hanging on the wall
Six green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be five green bottles
Hanging on the wall

Five green bottles
Hanging on the wall
Five green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be four green bottles
Hanging on the wall

Four green bottles
Hanging on the wall
Four green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be three green bottles
Hanging on the wall

Three green bottles
Hanging on the wall
Three green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be two green bottles
Hanging on the wall

Two green bottles
Hanging on the wall
Two green bottles
Hanging on the wall
And if one green bottle
Should accidentally fall
There'll be one green bottle
Hanging on the wall

One green bottle
Hanging on the wall
One green bottle
Hanging on the wall
If that one green bottle
Should accidentally fall
There'll be no green bottles
Hanging on the wall
```

## Extension Options

- Generate the lyrics for Ninety-Nine Green Bottles.

- Write a Green Bottles lyrics generator that will take a given number, and return the lyrics from that number onwards.

## Planning

How to change numbers to strings? Found Humanize gem: https://github.com/radar/humanize

Edge cases:
- Penultimate verse changes to singular: "There'll be one green bottle".
- Final verse changes entirely to singular and last 4 lines are different.

Pseudo-code:
- variable = verse, named ```verse```
- separate variable used for final verse, named ```final_verse```
- ```x``` = current integer
- ```x``` inserted in first four lines, then converted to string
- ```x - 1``` is inserted into 5th line, then converted to string
- conditional used to determine plurality of 7th line
- above is put through a loop until ```x``` is 1.
- conditional used to insert ```final_verse``` if ```x == 1```

Class model:

| TenGreenBottles |
| --- |
| @bottle_number |
| .lyrics |
| .verse |
| .final_verse |
