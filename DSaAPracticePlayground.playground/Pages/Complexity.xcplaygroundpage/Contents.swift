// COMPARING TIME COMPLEXITY

// Finds the sum of numbers from 1 to n
// The code loops 10000 times and returns 50005000.
// It is O(n) and will take a moment to run in the playground as it counts through the loop and prints results.
func sumFromOne(upto n: Int) -> Int {
    var result = 0

    for i in 1...n {
        result += i
    }

    return result
}

print(sumFromOne(upto: 10000))

