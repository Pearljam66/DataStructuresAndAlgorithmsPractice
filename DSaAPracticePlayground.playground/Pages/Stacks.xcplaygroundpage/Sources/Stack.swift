public struct Stack<Element> {
    private var storage: [Element] = []
    public init() { }

    public init(_ elements: [Element]) {
        storage = elements
    }

    public mutating func push (_ element: Element) {
        storage.append(element)
    }

    // Apply this attribute to a function or method declaration to suppress the compiler
    // warning when the function or method that returns a value is called without using it's result.
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }

    // Looks at the top element in the stack without mutating it's contents
    public func peek() -> Element? {
        storage.last
    }

    public var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: CustomDebugStringConvertible {
    // Creating an array that maps the elements to String via storage.map { "\$0)" }
    // Creating a new array that reverses the previous array using reversed().
    // Flattening out the array into a string by using joined(separator:). You
    // separate the elements of the array using the newline character "\n".
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator:"\n"))
        -----------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
