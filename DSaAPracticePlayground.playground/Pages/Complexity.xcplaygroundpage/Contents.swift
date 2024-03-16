// MARK: Comparing Time Complexity
// Time complexity can help predict scalability.

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

// Finds the sum of numbers using simple arithmetic.
// O(1) it's time/space complexity is constant and excellent

func sumFromOneUsingSimpleArithmetic(upto n: Int) -> Int {
    (n + 1) * n / 2
}

print(sumFromOneUsingSimpleArithmetic(upto: 10000))

// MARK: Space Complexity

// Space complexity is the measure of resources required for the algorithm to run.
// For computers, the resources for algorithms is memory
// The space complexity is 0(n) which is "Fair".

func printSorted(_ array: [Int]) {
    let sorted = array.sorted()

    for element in sorted {
        print(element)
    }
}

printSorted([34, 86, 23, 12, 93, 675])

// The overall goal is to iterate through the array multiple times, printing the next smallest value for each iteration.
// Space complexity is O(1)
func printSortedImproved(_ array:[Int]) {
    // Check to see if the array is not empty and if it's empty then return without printing anything.
    guard !array.isEmpty else { return }

    // currentCount keeps track of the number of print statements made.
    var currentCount = 0
    // minValue stores the last printed value
    // Int.min is the minimum representable integer in this type.
    var minValue = Int.min

    // The algorithm begins by printing out all values matching the minValue,
    // and updates the currentCount according to the number of print statements made.
    for value in array {
        if value == minValue {
            print(value)
            currentCount += 1
        }
    }

    while currentCount == array.count {

        // Using the while loop, the algorithm finds the lowest value that is larger
        // than the minValue and stores it in currentValue.
        var currentValue = array.max()!

        for value in array {
            if value < currentValue && value > minValue {
                currentValue = value
            }
        }

        // Prints all values of currentValue inside the array while updating currentCount.
        for value in array {
            if value == currentValue {
                print(value)
                currentCount += 1
            }
        }

        // minValue is set to currentValue so the next iteration will try to find the next minimum value.
        minValue = currentValue
    }
}

printSortedImproved([34, 86, 23, 12, 93, 675])

// Big Omega notation - used to measure the best-case runtime for an algorithm. This isn't as useful as Big 0 because getting the best case is often untenable.
// Big Theta notation - use to measure the runtime for an algorithm that has the same best and worse case.
