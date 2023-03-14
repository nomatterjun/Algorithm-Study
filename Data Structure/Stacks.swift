
struct Stack<Element> {
  private var storage: [Element] = []

  public init() { }

  public init(_ elements: [Element]) {
    self.storage = elements
  }

  public mutating func push(_ element: Element) {
    self.storage.append(element)
  }

  @discardableResult
  public mutating func pop() -> Element? {
    self.storage.popLast()
  }

  public func peek() -> Element? {
    self.storage.last
  }

  public var isEmpty: Bool {
    self.peek() == nil
  }
}

// 1. Reverse an Array
// Create a function that uses a stack to print the contents of an array in reversed order.

func printInReverse<T>(_ array: [T]) {
  var stack = Stack<T>(array)

  while !stack.isEmpty {
    print(stack.pop()!)
  }
}

printInReverse([1, 2, 3, 4, 5])

// 2. Balance the parentheses
// Check for balanced parentheses.
// Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced.
// For example:
// // 1
// h((e))llo(world)() // balanced parentheses
//
// // 2
// (hello world // unbalanced parentheses

func checkParentheses(_ string: String) -> Bool {
  var stack = Stack<Character>()

  for char in string {
    if char == "(" {
      stack.push(char)
    } else if char == ")" {
      if stack.isEmpty {
        return false
      } else {
        stack.pop()
      }
    }
  }
  return stack.isEmpty
}

print(checkParentheses("h((e))llo(world))"))
