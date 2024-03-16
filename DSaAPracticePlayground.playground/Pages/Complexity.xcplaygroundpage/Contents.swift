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

// Finds the sum of numbers from 1 to using the Standard Library
// The time complexity of reduce is 0(n) which means linear time and "Fair".
// It calls the + method n times.
// It is the same as Big O, but has smaller constants because it is compiled code.
func sumFromOneUsingStandardLibrary(upTo n: Int) -> Int {
    // You don't need the return keyword since it's a single expression.
    // Reduce returns the result of combining the elements of the sequence using the given closure.
    (1...n).reduce(0, +)
}

print(sumFromOneUsingStandardLibrary(upTo: 10000))
