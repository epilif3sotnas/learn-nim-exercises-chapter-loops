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