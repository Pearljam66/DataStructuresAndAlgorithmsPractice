// MARK: Stacks

// push - adding an element to the top of the stack
// pop - removing an element to the top of the stack

// Stack - LIFO(last in first out)

example(of: "using a stack") {
    var stack = Stack<Int>()

    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)

    print(stack)

    if let poppedElement = stack.pop() {
        assert(4 == poppedElement)
        print("Popped: \(poppedElement)")
    }
}


