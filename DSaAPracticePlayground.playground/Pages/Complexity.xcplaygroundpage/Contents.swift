// COMPARING TIME COMPLEXITY

// Finds the sum of numbers from 1 to n
// The code loops 10000 times and returns 10000.
// It is O(n) and will take a moment to run in the playground as it counts through the loop and prints results.
func sumFromOne (upto n: Int) -> Int {
    var result = 0

    for i in 1...n {
        result += 1
    }
    print(result)
    return result
}

sumFromOne(upto: 10000)


