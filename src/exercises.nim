# nim
import std/strformat


proc exercise_1*(number: int32) =
    if number <= 0:
        return

    var num: int = number
    while num != 1:
        echo "Number: " & $num
        if num mod 2 == 0:
            num = (num / 2).toInt()
            continue

        num = (3 * num) + 1

    echo "Number: " & $num

proc exercise_2*(text: string) =
    if len(text) <= 0:
        return

    for letter in text:

        case letter:
            of 'a', 'e', 'i', 'o', 'u':
                echo letter

            else: discard

proc exercise_3*(rounds: int32) =
    if rounds <= 0:
        return

    for idx in countup(1, rounds):
        if idx mod 3 == 0 and idx mod 5 == 0:
            echo("fizzbuzz")
            continue

        if idx mod 3 == 0:
            echo("fizz")
            continue

        if idx mod 5 == 0:
            echo("buzz")
            continue

        echo(idx)

proc exercise_4*(values_in: openArray[float64]) =
    echo("in   |  cm   \n---------------")
    
    for value_in in values_in:
        let value_cm = value_in * 2.54

        echo(fmt("{value_in}  |  {value_cm}"))